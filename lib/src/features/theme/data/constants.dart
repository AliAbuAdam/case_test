part of 'theme.dart';

/// Цвета
abstract class AppColors {
  // Базовые
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color lightGray = Color(0xFFF4F4F4);
  static const Color darkGrey = Color(0xFF2F2F2F);
  static const Color red = Color(0xFFF44336);
  static const Color transparent = Color(0x00000000);

  // Фирменные
  static const Color ultraDarkGray = Color(0xFF131313);
  static const Color ultraLightGray = Color(0xFFE7E7E7);
  static const Color middleGrey = Color(0xFF898989);
}

/// Отступы
abstract class AppPaddings {
  static const mainSides = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const internalContent =
      EdgeInsets.symmetric(horizontal: 12, vertical: 16);
}

/// Радиусы
abstract class AppRadius {
  static BorderRadius main = BorderRadius.circular(5);
  static BorderRadius standart = BorderRadius.circular(10);
  static BorderRadius onlyTop = const BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
  );
  static BorderRadius onlyBottom = const BorderRadius.only(
    bottomLeft: Radius.circular(5),
    bottomRight: Radius.circular(5),
  );
}
