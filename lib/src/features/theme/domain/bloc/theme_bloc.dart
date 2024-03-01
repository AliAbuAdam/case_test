import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/theme_repository.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository themeRepository;

  ThemeBloc(this.themeRepository) : super(const ThemeState.initial()) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        fetchThemeMode: (event) => _onFetchThemeMode(event, emit),
        toogleThemeMode: (event) => _onToogleThemeMode(event, emit),
      ),
    );
  }

  Future<void> _onFetchThemeMode(
    _ThemeEventFetchThemeMode event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      final isDarkMode = themeRepository.isDarkMode();
      emit(ThemeState.success(isDarkMode));
    } catch (error) {
      emit(ThemeState.error(errorMessage: error.toString()));
    }
  }

  Future<void> _onToogleThemeMode(
    _ThemeEventToogleThemeMode event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      await themeRepository.toogleThemeMode();
      final isDarkMode = themeRepository.isDarkMode();
      emit(ThemeState.success(isDarkMode));
    } catch (error) {
      emit(ThemeState.error(errorMessage: error.toString()));
    }
  }
}
