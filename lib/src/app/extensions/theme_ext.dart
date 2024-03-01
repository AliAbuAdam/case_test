part of 'extensions.dart';

extension ThemeExt on BuildContext {
  // Theme
  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
  ThemePaddings get padding => Theme.of(this).extension<ThemePaddings>()!;
  ThemeRadiuses get radius => Theme.of(this).extension<ThemeRadiuses>()!;
  ThemeDecorations get decoration =>
      Theme.of(this).extension<ThemeDecorations>()!;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
