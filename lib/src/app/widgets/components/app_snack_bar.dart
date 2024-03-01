import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';

abstract class AppSnackBar {
  static void showSnackBarWithError(BuildContext context, dynamic error) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            'Error: $error, Message: ${error.errorMessage}',
            maxLines: 5,
          ),
        ),
      ),
    );
  }

  static void showSnackBarWithMessage(BuildContext context, String message) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        backgroundColor: context.color.backgroundHelper,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: context.color.accent),
          borderRadius: context.radius.general,
        ),
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            message,
            maxLines: 5,
            style: context.text.caption
                .copyWith(color: context.color.foregroundHelper),
          ),
        ),
      ),
    );
  }

  static void clearSnackBars(BuildContext context) {
    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
  }
}
