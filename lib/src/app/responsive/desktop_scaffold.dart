import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:case_test/src/app/widgets/components/app_drawer.dart';

import '../widgets/components/placeholder_box.dart';
import '../widgets/components/placeholder_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.background,
      body: Row(
        children: [
          const AppDrawer(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) => const PlaceholderBox(),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const PlaceholderTile(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: context.color.accent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
