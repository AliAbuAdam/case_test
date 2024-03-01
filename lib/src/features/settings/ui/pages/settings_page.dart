import 'package:flutter/material.dart';
import 'package:case_test/resources/resources.dart';
import 'package:case_test/src/app/widgets/components/app_list_tile.dart';
import 'package:case_test/src/features/authentication/widget/authentication_scope.dart';
import 'package:case_test/src/features/theme/ui/widgets/theme_switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            title: const Text('Настройки'),
            actions: [
              IconButton(
                onPressed: () =>
                    AuthenticationScope.controllerOf(context).signOut(),
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                AppListTile(
                  title: 'Учетные данные',
                  iconPath: ImagesSvg.tileIcon,
                  onTap: () {},
                ),
                AppListTile(
                  title: 'Категория настроек 1',
                  iconPath: ImagesSvg.tileIcon,
                  onTap: () {},
                ),
                AppListTile(
                  title: 'Тёмная тема',
                  iconPath: ImagesSvg.tileIcon,
                  trailingIcon: const ThemeSwitch(),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
