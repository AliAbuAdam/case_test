import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:case_test/src/features/authentication/widget/authentication_scope.dart';
import 'package:case_test/src/features/authentication/widget/sign_in_page.dart';
import 'package:case_test/src/features/dependencies/widgets/dependencies_scope.dart';
import 'package:case_test/src/features/theme/data/theme.dart';
import 'package:case_test/src/features/theme/domain/bloc/theme_bloc.dart';

import '../localization/localization.dart';
import '../router/navigation.dart';
import 'components/app_loader.dart';
import 'window_scope.dart';

/// App widget.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter router;

  @override
  void initState() {
    router = Navigation.makeRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: DependenciesScope.of(context).themeBloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const AppLoader(),
          success: (isDarkMode) => GestureDetector(
            onTap: () {
              // Скрываем клавиатуру по тапу на экране по всему app
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp.router(
              title: 'Marali Starter',
              debugShowCheckedModeBanner: false,
              routerConfig: router,
              localizationsDelegates: const <LocalizationsDelegate<Object?>>[
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                Localization.delegate,
              ],
              theme: isDarkMode
                  ? AppDarkTheme.createTheme()
                  : AppLightTheme.createTheme(),
              supportedLocales: Localization.supportedLocales,
              locale: const Locale('en', 'US'),
              builder: (context, child) => Overlay(
                initialEntries: [
                  OverlayEntry(
                    builder: (context) => MediaQuery(
                      data: MediaQuery.of(context)
                          .copyWith(textScaler: const TextScaler.linear(1)),
                      child: WindowScope(
                        title: Localization.of(context).title,
                        child: AuthenticationScope(
                          signInScreen: const SignInPage(),
                          child: child ?? const SizedBox.shrink(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
