import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:case_test/src/app/widgets/components/app_loader.dart';
import 'package:case_test/src/features/dependencies/widgets/dependencies_scope.dart';

import '../../domain/bloc/theme_bloc.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: DependenciesScope.of(context).themeBloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const AppLoader(),
          success: (isDarkMode) => Switch.adaptive(
            value: isDarkMode,
            onChanged: (value) {
              DependenciesScope.of(context)
                  .themeBloc
                  .add(const ThemeEvent.toogleThemeMode());
            },
          ),
        );
      },
    );
  }
}
