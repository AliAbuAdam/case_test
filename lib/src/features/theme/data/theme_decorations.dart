part of 'theme.dart';

class ThemeDecorations extends ThemeExtension<ThemeDecorations> {
  final Decoration card;
  final Decoration cardWithTopRadius;
  final Decoration cardWithBorder;
  final Decoration noFilledCardWithBorder;
  final Decoration currentCard;
  final Decoration bottomBar;

  ThemeDecorations({
    required this.card,
    required this.cardWithTopRadius,
    required this.cardWithBorder,
    required this.noFilledCardWithBorder,
    required this.currentCard,
    required this.bottomBar,
  });

  @override
  ThemeExtension<ThemeDecorations> copyWith({
    Decoration? card,
    Decoration? cardWithTopRadius,
    Decoration? cardWithBorder,
    Decoration? noFilledCardWithBorder,
    Decoration? currentCard,
    Decoration? bottomBar,
    Decoration? prayerRow,
  }) {
    return ThemeDecorations(
      card: card ?? this.card,
      cardWithTopRadius: cardWithTopRadius ?? this.cardWithTopRadius,
      cardWithBorder: cardWithBorder ?? this.cardWithBorder,
      noFilledCardWithBorder:
          noFilledCardWithBorder ?? this.noFilledCardWithBorder,
      currentCard: currentCard ?? this.currentCard,
      bottomBar: bottomBar ?? this.bottomBar,
    );
  }

  @override
  ThemeExtension<ThemeDecorations> lerp(
      ThemeExtension<ThemeDecorations>? other, double t) {
    if (other is! ThemeDecorations) {
      return this;
    }

    return ThemeDecorations(
      card: Decoration.lerp(card, other.card, t)!,
      cardWithTopRadius:
          Decoration.lerp(cardWithTopRadius, other.cardWithTopRadius, t)!,
      cardWithBorder: Decoration.lerp(cardWithBorder, other.cardWithBorder, t)!,
      noFilledCardWithBorder: Decoration.lerp(
          noFilledCardWithBorder, other.noFilledCardWithBorder, t)!,
      currentCard: Decoration.lerp(currentCard, other.currentCard, t)!,
      bottomBar: Decoration.lerp(bottomBar, other.bottomBar, t)!,
    );
  }

  static ThemeDecorations get light => ThemeDecorations(
        card: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.main,
        ),
        cardWithTopRadius: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.onlyTop,
        ),
        cardWithBorder: BoxDecoration(
          color: AppColors.ultraLightGray,
          border: Border.all(
            color: AppColors.middleGrey.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: AppRadius.main,
        ),
        noFilledCardWithBorder: BoxDecoration(
          color: AppColors.transparent,
          border: Border.all(
            color: AppColors.middleGrey.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: AppRadius.main,
        ),
        currentCard: BoxDecoration(
          color: AppColors.darkGrey,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.main,
        ),
        bottomBar: const BoxDecoration(
          color: AppColors.ultraLightGray,
        ),
      );

  static ThemeDecorations get dark => ThemeDecorations(
        card: BoxDecoration(
          color: AppColors.ultraDarkGray,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.main,
        ),
        cardWithTopRadius: BoxDecoration(
          color: AppColors.ultraDarkGray,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.onlyTop,
        ),
        cardWithBorder: BoxDecoration(
          color: AppColors.darkGrey,
          border: Border.all(
            color: AppColors.darkGrey.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: AppRadius.main,
        ),
        noFilledCardWithBorder: BoxDecoration(
          color: AppColors.transparent,
          border: Border.all(
            color: AppColors.darkGrey,
            width: 1,
          ),
          borderRadius: AppRadius.main,
        ),
        currentCard: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: AppRadius.main,
        ),
        bottomBar: BoxDecoration(
          color: AppColors.darkGrey.withAlpha(130),
        ),
      );
}
