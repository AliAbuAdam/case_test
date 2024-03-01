import 'dart:async';

import 'package:case_test/src/app/controllers/droppable_controller_concurrency.dart';
import 'package:case_test/src/app/utils/error_util.dart';
import '../domain/model/user.dart';
import '../domain/repositories/authentication_repository.dart';
import 'package:case_test/src/app/controllers/state_controller.dart';
import 'authentication_state.dart';

final class AuthenticationController
    extends StateController<AuthenticationState>
    with DroppableControllerConcurrency {
  AuthenticationController({
    required IAuthenticationRepository repository,
    super.initialState =
        const AuthenticationState.idle(user: User.unauthenticated()),
  }) : _repository = repository {
    _userSubscription = repository
        .userChanges()
        .map<AuthenticationState>((u) => AuthenticationState.idle(user: u))
        .where((newState) =>
            state.isProcessing || !identical(newState.user, state.user))
        .listen(setState);
  }

  final IAuthenticationRepository _repository;
  StreamSubscription<AuthenticationState>? _userSubscription;

  void signInAnonymously() => handle(
        () async {
          setState(AuthenticationState.processing(
              user: state.user, message: 'Logging in...'));
          await _repository.signInAnonymously();
        },
        (error, _) => setState(AuthenticationState.idle(
            user: state.user, error: ErrorUtil.formatMessage(error))),
        () => setState(AuthenticationState.idle(user: state.user)),
      );

  void signOut() => handle(
        () async {
          setState(AuthenticationState.processing(
              user: state.user, message: 'Sign out...'));
          await _repository.signOut();
        },
        (error, _) => setState(AuthenticationState.idle(
            user: state.user, error: ErrorUtil.formatMessage(error))),
        () => setState(AuthenticationState.idle(user: state.user)),
      );

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }
}
