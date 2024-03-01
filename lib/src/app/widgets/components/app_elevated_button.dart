import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:case_test/src/features/theme/data/theme.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.backgroundColor,
    this.foregroundColor,
    this.enableBorder = false,
  });

  final VoidCallback? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool enableBorder;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(double.maxFinite, 45)),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? context.color.accent),
        elevation: const MaterialStatePropertyAll(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppRadius.main,
            side: enableBorder
                ? BorderSide(
                    width: 1,
                    color: context.color.accent,
                  )
                : BorderSide.none,
          ),
        ),
      ),
      child: Text(
        label,
        style: context.text.button.copyWith(color: foregroundColor),
      ),
    );
  }
}
