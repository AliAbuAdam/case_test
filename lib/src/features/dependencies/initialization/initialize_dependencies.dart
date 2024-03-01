import 'dart:async';
import 'package:case_test/src/app/api/data/dio_http_app_api.dart';
import 'package:case_test/src/app/api/domain/http_app_api.dart';
import 'package:case_test/src/features/exchange/data/repositories/main_exchange_repository.dart';
import 'package:case_test/src/features/exchange/domain/bloc/exchange_bloc.dart';
import 'package:case_test/src/features/exchange/domain/repositories/exchange_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:case_test/src/app/controllers/controller_observer.dart';
import 'package:case_test/src/app/controllers/controller.dart';
import 'package:case_test/src/features/authentication/data/repositories/fake_authentication_repository.dart';
import 'package:case_test/src/features/dependencies/initialization/platform/initialization_vm.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'package:chatapp/src/feature/dependencies/initialization/platform/initialization_js.dart';
import 'package:l/l.dart';
import 'package:case_test/src/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:case_test/src/features/theme/data/repositories/main_theme_repository.dart';
import 'package:case_test/src/features/theme/domain/bloc/theme_bloc.dart';
import 'package:case_test/src/features/theme/domain/repository/theme_repository.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/app_metadata.dart';
import '../model/dependencies.dart';

typedef _InitializationStep = FutureOr<void> Function(
    _MutableDependencies dependencies);

class _MutableDependencies implements Dependencies {
  @override
  late AppMetadata appMetadata;

  @override
  late IAuthenticationRepository authenticationRepository;

  @override
  late SharedPreferences sharedPreferences;

  @override
  late FlutterSecureStorage secureStorage;

  @override
  late HttpAppApi httpAppApi;

  @override
  late ThemeRepository themeRepository;

  @override
  late ThemeBloc themeBloc;

  @override
  late ExchangeRepository exchangeRepository;

  @override
  late ExchangeBloc exchangeBloc;
}

@internal
mixin InitializeDependencies {
  /// Initializes the app and returns a [Dependencies] object
  @protected
  Future<Dependencies> $initializeDependencies({
    void Function(int progress, String message)? onProgress,
  }) async {
    final steps = _initializationSteps;
    final dependencies = _MutableDependencies();
    final totalSteps = steps.length;
    for (var currentStep = 0; currentStep < totalSteps; currentStep++) {
      final step = steps[currentStep];
      final percent = (currentStep * 100 ~/ totalSteps).clamp(0, 100);
      onProgress?.call(percent, step.$1);
      l.v6(
          'Initialization | $currentStep/$totalSteps ($percent%) | "${step.$1}"');
      await step.$2(dependencies);
    }
    return dependencies;
  }

  List<(String, _InitializationStep)> get _initializationSteps =>
      <(String, _InitializationStep)>[
        (
          'Platform pre-initialization',
          (_) => $platformInitialization(),
        ),
        (
          'Observer state managment',
          (_) => Controller.observer = ControllerObserver(),
        ),
        (
          'Initializing analytics',
          (_) {},
        ),
        (
          'Log app open',
          (_) {},
        ),
        (
          'Get remote config',
          (_) {},
        ),
        (
          'Authentication repository',
          (dependencies) => dependencies.authenticationRepository =
              FakeAuthenticationRepository(),
        ),
        (
          'Shared Preferences',
          (dependencies) async {
            dependencies.sharedPreferences =
                await SharedPreferences.getInstance();
          },
        ),
        (
          'Secure Storage',
          (dependencies) =>
              dependencies.secureStorage = const FlutterSecureStorage(
                aOptions: AndroidOptions(encryptedSharedPreferences: true),
              )
        ),
        (
          'Http App Api',
          (dependencies) => dependencies.httpAppApi = DioHttpAppApi(),
        ),
        (
          'Theme repository',
          (dependencies) => dependencies.themeRepository =
              MainThemeRepository(dependencies.sharedPreferences),
        ),
        (
          'Theme bloc',
          (dependencies) =>
              dependencies.themeBloc = ThemeBloc(dependencies.themeRepository)
                ..add(const ThemeEvent.fetchThemeMode()),
        ),
        (
          'Exchange repository',
          (dependencies) => dependencies.exchangeRepository =
              MainExchangeRepository(api: dependencies.httpAppApi),
        ),
        (
          'Exchange bloc',
          (dependencies) => dependencies.exchangeBloc =
              ExchangeBloc(dependencies.exchangeRepository),
        ),
      ];
}
