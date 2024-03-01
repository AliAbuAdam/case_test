part of 'theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle title;
  final TextStyle titleBold;
  final TextStyle subtitle;
  final TextStyle content;
  final TextStyle button;
  final TextStyle caption;

  // [ Custom ]

  ThemeTextStyles({
    required this.title,
    required this.titleBold,
    required this.subtitle,
    required this.content,
    required this.button,
    required this.caption,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? title,
    TextStyle? titleBold,
    TextStyle? subtitle,
    TextStyle? content,
    TextStyle? button,
    TextStyle? caption,
  }) {
    return ThemeTextStyles(
      title: title ?? this.title,
      titleBold: titleBold ?? this.titleBold,
      subtitle: subtitle ?? this.subtitle,
      content: content ?? this.content,
      button: button ?? this.button,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
      ThemeExtension<ThemeTextStyles>? other, double t) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      title: TextStyle.lerp(title, other.title, t)!,
      titleBold: TextStyle.lerp(titleBold, other.titleBold, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      content: TextStyle.lerp(content, other.content, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }

  static ThemeTextStyles get light => ThemeTextStyles(
        title: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 20,
          color: AppColors.black,
        ),
        titleBold: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.darkGrey,
        ),
        subtitle: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 18,
          color: AppColors.black,
        ),
        content: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 16,
          color: AppColors.black,
        ),
        button: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 14,
          color: AppColors.white,
        ),
        caption: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 13,
          color: AppColors.black,
        ),

        // [ Custom ]
      );

  static ThemeTextStyles get dark => ThemeTextStyles(
        title: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 20,
          color: AppColors.white,
        ),
        titleBold: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.lightGray,
        ),
        subtitle: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 18,
          color: AppColors.white,
        ),
        content: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 16,
          color: AppColors.white,
        ),
        button: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 14,
          color: AppColors.black,
        ),
        caption: GoogleFonts.getFont(
          'Roboto Flex',
          fontSize: 13,
          color: AppColors.white,
        ),

        // [ Custom ]
      );
}
