import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:case_test/src/app/extensions/extensions.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.title,
    this.iconPath,
    this.iconSize,
    this.decoration,
    required this.onTap,
    this.trailingIcon,
    this.subTitle,
  });

  final String title;
  final String? subTitle;
  final String? iconPath;
  final double? iconSize;
  final Decoration? decoration;
  final VoidCallback onTap;
  final Widget? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.internal,
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: context.padding.mainSides,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconPath != null)
                  SvgPicture.asset(
                    iconPath ?? '',
                    width: iconSize ?? 24,
                    height: iconSize ?? 28,
                    colorFilter: ColorFilter.mode(
                      context.color.accent,
                      BlendMode.srcIn,
                    ),
                  ),
                if (iconPath != null) const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: context.text.content,
                      ),
                      if (subTitle != null)
                        Column(
                          children: [
                            const SizedBox(height: 2),
                            Text(
                              subTitle ?? '',
                              style: context.text.caption,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                trailingIcon ??
                    Icon(
                      Icons.arrow_forward_ios,
                      color: context.color.accent,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
