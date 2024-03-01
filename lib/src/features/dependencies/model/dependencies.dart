import 'package:case_test/src/app/api/domain/http_app_api.dart';
import 'package:case_test/src/features/exchange/domain/bloc/exchange_bloc.dart';
import 'package:case_test/src/features/exchange/domain/repositories/exchange_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:case_test/src/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:case_test/src/features/theme/domain/bloc/theme_bloc.dart';
import 'package:case_test/src/features/theme/domain/repository/theme_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_metadata.dart';

abstract interface class Dependencies {
  /// App metadata
  abstract final AppMetadata appMetadata;

  /// Authentication repository
  abstract final IAuthenticationRepository authenticationRepository;

  /// Shared Preferences
  abstract final SharedPreferences sharedPreferences;

  /// Secure Storage
  abstract final FlutterSecureStorage secureStorage;

  /// Theme repository
  abstract final ThemeRepository themeRepository;

  /// Theme bloc
  abstract final ThemeBloc themeBloc;

  /// Http App Api
  abstract final HttpAppApi httpAppApi;

  /// Exchange repository
  abstract final ExchangeRepository exchangeRepository;

  /// Exchange bloc
  abstract final ExchangeBloc exchangeBloc;
}
