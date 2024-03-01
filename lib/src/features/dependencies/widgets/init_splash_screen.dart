import 'package:flutter/material.dart';
import 'package:case_test/src/features/theme/data/theme.dart';

class InitSplashScreen extends StatelessWidget {
  const InitSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = View.of(context).platformDispatcher.platformBrightness ==
        Brightness.dark;
    final theme =
        isDarkMode ? AppDarkTheme.createTheme() : AppLightTheme.createTheme();
    return Material(
      color: theme.primaryColor,
      child: Center(
        child: CircularProgressIndicator(
          color: isDarkMode ? AppColors.white : AppColors.black,
        ),
      ),
    );
  }
}
