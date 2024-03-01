part of 'theme.dart';

class ThemeRadiuses extends ThemeExtension<ThemeRadiuses> {
  final BorderRadius general;
  final BorderRadius strong;
  final BorderRadius message;
  final BorderRadius cardBottom;
  final BorderRadius cardTop;

  ThemeRadiuses({
    required this.general,
    required this.strong,
    required this.message,
    required this.cardTop,
    required this.cardBottom,
  });

  @override
  ThemeExtension<ThemeRadiuses> copyWith({
    BorderRadius? general,
    BorderRadius? strong,
    BorderRadius? message,
    BorderRadius? cardTop,
    BorderRadius? cardBottom,
  }) {
    return ThemeRadiuses(
      general: general ?? this.general,
      strong: strong ?? this.strong,
      message: message ?? this.message,
      cardTop: cardTop ?? this.cardTop,
      cardBottom: cardBottom ?? this.cardBottom,
    );
  }

  @override
  ThemeExtension<ThemeRadiuses> lerp(
      ThemeExtension<ThemeRadiuses>? other, double t) {
    if (other is! ThemeRadiuses) {
      return this;
    }

    return ThemeRadiuses(
      general: BorderRadius.lerp(general, other.general, t)!,
      strong: BorderRadius.lerp(strong, other.strong, t)!,
      message: BorderRadius.lerp(message, other.message, t)!,
      cardTop: BorderRadius.lerp(cardTop, other.cardTop, t)!,
      cardBottom: BorderRadius.lerp(cardBottom, other.cardBottom, t)!,
    );
  }

  static ThemeRadiuses get main => ThemeRadiuses(
        general: BorderRadius.circular(5),
        strong: BorderRadius.circular(5),
        message: BorderRadius.circular(15),
        cardTop: const BorderRadius.only(
          topRight: Radius.circular(5),
          topLeft: Radius.circular(5),
        ),
        cardBottom: const BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      );
}
