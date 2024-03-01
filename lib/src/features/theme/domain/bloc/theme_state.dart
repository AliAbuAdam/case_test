part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _ThemeStateInitial;
  const factory ThemeState.error({String? errorMessage}) = _ThemeStateError;
  const factory ThemeState.success(bool isDarkMode) = _ThemeStateSuccess;
}
