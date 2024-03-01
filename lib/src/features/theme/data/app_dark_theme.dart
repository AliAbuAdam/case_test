part of 'theme.dart';

abstract class AppDarkTheme {
  static ThemeData createTheme() {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.black,
      appBarTheme: _makeAppBarTheme(),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors.dark,
        ThemeTextStyles.dark,
        ThemePaddings.main,
        ThemeRadiuses.main,
      ],
      inputDecorationTheme: _makeInputDecorationTheme(),
      splashFactory: NoSplash.splashFactory,
    );
  }

  static AppBarTheme _makeAppBarTheme() => const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.black,
        elevation: 0,
        foregroundColor: AppColors.white,
        surfaceTintColor: AppColors.transparent,
        toolbarHeight: 45,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      );

  static InputDecorationTheme _makeInputDecorationTheme() =>
      InputDecorationTheme(
        helperMaxLines: 2,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        isCollapsed: true,
        fillColor: AppColors.darkGrey,
        contentPadding: AppPaddings.internalContent,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppRadius.main,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.lightGray, width: 0.5),
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
        labelStyle: ThemeTextStyles.dark.content.copyWith(
          color: AppColors.lightGray,
        ),
        hintStyle: ThemeTextStyles.dark.content,
        errorStyle: ThemeTextStyles.light.caption.copyWith(
          color: AppColors.red,
        ),
        helperStyle: ThemeTextStyles.dark.caption.copyWith(
          color: AppColors.lightGray,
        ),
        suffixStyle: ThemeTextStyles.dark.content.copyWith(
          color: AppColors.lightGray,
        ),
      );
}
