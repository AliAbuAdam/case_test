part of 'theme.dart';

class ThemePaddings extends ThemeExtension<ThemePaddings> {
  final EdgeInsets mainSides;
  final EdgeInsets internal;

  ThemePaddings({
    required this.mainSides,
    required this.internal,
  });

  @override
  ThemeExtension<ThemePaddings> copyWith({
    EdgeInsets? mainSides,
    EdgeInsets? internal,
  }) {
    return ThemePaddings(
      mainSides: mainSides ?? this.mainSides,
      internal: internal ?? this.internal,
    );
  }

  @override
  ThemeExtension<ThemePaddings> lerp(
      ThemeExtension<ThemePaddings>? other, double t) {
    if (other is! ThemePaddings) {
      return this;
    }

    return ThemePaddings(
      mainSides: EdgeInsets.lerp(mainSides, other.mainSides, t)!,
      internal: EdgeInsets.lerp(internal, other.internal, t)!,
    );
  }

  static ThemePaddings get main => ThemePaddings(
        mainSides: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        internal: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      );
}
