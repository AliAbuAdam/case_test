import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repository/theme_repository.dart';

class MainThemeRepository implements ThemeRepository {
  final SharedPreferences sharedPreferences;

  MainThemeRepository(this.sharedPreferences);

  @override
  bool isDarkMode() {
    try {
      return sharedPreferences.getBool('isDarkMode') ?? false;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> toogleThemeMode() async {
    try {
      final isDarkMode = sharedPreferences.getBool('isDarkMode') ?? false;
      await sharedPreferences.setBool('isDarkMode', !isDarkMode);
    } catch (_) {
      rethrow;
    }
  }
}
