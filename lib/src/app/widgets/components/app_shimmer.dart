import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    final baseColor = context.color.shimmerBackground;
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: context.color.shimmerHighlight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: context.radius.strong,
        ),
        child: AspectRatio(
          aspectRatio: 5,
          child: SizedBox(
            width: width,
          ),
        ),
      ),
    );
  }
}
