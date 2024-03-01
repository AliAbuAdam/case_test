import 'dart:async';
import 'package:case_test/src/features/authentication/domain/model/user.dart';

import '../../domain/repositories/authentication_repository.dart';

class FakeAuthenticationRepository implements IAuthenticationRepository {
  final StreamController<User> _userController =
      StreamController<User>.broadcast();
  User _user = const User.unauthenticated();

  @override
  FutureOr<User> getUser() => _user;

  @override
  Stream<User> userChanges() => _userController.stream;

  @override
  Future<void> signInAnonymously() => Future<void>.sync(() => _userController
      .add(_user = const User.authenticated(id: 'anonymous-user-id')));

  @override
  Future<void> signOut() => Future<void>.sync(
      () => _userController.add(_user = const User.unauthenticated()));
}
