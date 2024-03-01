part of 'theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color main;
  final Color accent;
  final Color background;
  final Color transparent;
  final Color backgroundHelper;
  final Color foregroundHelper;
  final Color shimmerBackground;
  final Color shimmerHighlight;
  final Color border;
  final Color error;
  final Color divider;

  ThemeColors({
    required this.main,
    required this.accent,
    required this.background,
    required this.transparent,
    required this.backgroundHelper,
    required this.foregroundHelper,
    required this.shimmerBackground,
    required this.shimmerHighlight,
    required this.border,
    required this.error,
    required this.divider,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? main,
    Color? accent,
    Color? background,
    Color? transparent,
    Color? backgroundHelper,
    Color? foregroundHelper,
    Color? shimmerBackground,
    Color? shimmerHighlight,
    Color? border,
    Color? error,
    Color? divider,
  }) {
    return ThemeColors(
      main: main ?? this.main,
      accent: accent ?? this.accent,
      background: background ?? this.background,
      transparent: transparent ?? this.transparent,
      backgroundHelper: backgroundHelper ?? this.backgroundHelper,
      foregroundHelper: foregroundHelper ?? this.foregroundHelper,
      shimmerBackground: shimmerBackground ?? this.shimmerBackground,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
      border: border ?? this.border,
      error: border ?? this.error,
      divider: divider ?? this.divider,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      main: Color.lerp(main, other.main, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      background: Color.lerp(background, other.background, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
      backgroundHelper:
          Color.lerp(backgroundHelper, other.backgroundHelper, t)!,
      foregroundHelper:
          Color.lerp(foregroundHelper, other.foregroundHelper, t)!,
      shimmerBackground:
          Color.lerp(shimmerBackground, other.shimmerBackground, t)!,
      shimmerHighlight:
          Color.lerp(shimmerHighlight, other.shimmerHighlight, t)!,
      border: Color.lerp(border, other.border, t)!,
      error: Color.lerp(error, other.error, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
    );
  }

  static ThemeColors get dark => ThemeColors(
        main: AppColors.black,
        accent: AppColors.white,
        background: AppColors.darkGrey,
        transparent: AppColors.transparent,
        backgroundHelper: AppColors.lightGray,
        foregroundHelper: AppColors.darkGrey,
        shimmerBackground: AppColors.black.withOpacity(0.3),
        shimmerHighlight: AppColors.darkGrey.withOpacity(0.2),
        border: AppColors.darkGrey.withOpacity(0.2),
        error: AppColors.red,
        divider: AppColors.lightGray,
      );

  static ThemeColors get light => ThemeColors(
        main: AppColors.white,
        accent: AppColors.black,
        background: AppColors.lightGray,
        transparent: AppColors.transparent,
        backgroundHelper: AppColors.darkGrey,
        foregroundHelper: AppColors.lightGray,
        shimmerBackground: AppColors.lightGray,
        shimmerHighlight: AppColors.white,
        border: AppColors.darkGrey.withOpacity(0.2),
        error: AppColors.red,
        divider: AppColors.lightGray,
      );
}
