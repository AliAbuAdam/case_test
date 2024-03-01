import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';

class PlaceholderBox extends StatelessWidget {
  const PlaceholderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.internal,
      child: Container(
        color: context.color.accent,
      ),
    );
  }
}
