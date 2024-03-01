part of 'theme.dart';

abstract class AppLightTheme {
  static ThemeData createTheme() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.white,
      appBarTheme: _makeAppBarTheme(),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors.light,
        ThemeTextStyles.light,
        ThemePaddings.main,
        ThemeRadiuses.main,
      ],
      inputDecorationTheme: _makeInputDecorationTheme(),
      splashFactory: NoSplash.splashFactory,
    );
  }

  static AppBarTheme _makeAppBarTheme() => const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        foregroundColor: AppColors.black,
        surfaceTintColor: AppColors.transparent,
        toolbarHeight: 45,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
      );

  static InputDecorationTheme _makeInputDecorationTheme() =>
      InputDecorationTheme(
        helperMaxLines: 2,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        isCollapsed: true,
        fillColor: AppColors.lightGray,
        contentPadding: AppPaddings.internalContent,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppRadius.main,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.darkGrey, width: 0.5),
          borderRadius: AppRadius.main,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.red, width: 0.5),
          borderRadius: AppRadius.main,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppRadius.main,
        ),
        labelStyle: ThemeTextStyles.light.content,
        hintStyle: ThemeTextStyles.light.content.copyWith(
          color: AppColors.lightGray,
        ),
        errorStyle: ThemeTextStyles.light.caption.copyWith(
          color: AppColors.red,
        ),
        helperStyle: ThemeTextStyles.light.caption.copyWith(
          color: AppColors.lightGray,
        ),
        suffixStyle: ThemeTextStyles.light.content.copyWith(
          color: AppColors.lightGray,
        ),
      );
}
