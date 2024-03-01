import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:case_test/src/app/extensions/extensions.dart';

import '../../utils/routes_util.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.color.background,
      child: Column(
        children: [
          const DrawerHeader(child: Icon(Icons.favorite)),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('S E T T I N G S'),
            onTap: () => context.goNamed(Routes.settings.toName),
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Y O O K A S S A'),
            onTap: () => context.goNamed(Routes.exchange.toName),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          ),
        ],
      ),
    );
  }
}
