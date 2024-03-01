import 'package:case_test/src/features/exchange/ui/pages/exchange_check_page.dart';
import 'package:case_test/src/features/exchange/ui/pages/exchange_page.dart';
import 'package:go_router/go_router.dart';
import 'package:case_test/src/features/settings/ui/pages/settings_page.dart';
import '../utils/routes_util.dart';
import '../widgets/root_page.dart';

abstract class Navigation {
  static GoRouter makeRouter() => GoRouter(
        routes: [
          GoRoute(
            path: Routes.root.toPath,
            name: Routes.root.toName,
            builder: (context, state) => const RootPage(),
            routes: [
              GoRoute(
                path: Routes.settings.toPath,
                name: Routes.settings.toName,
                builder: (context, state) => const SettingsPage(),
              ),
              GoRoute(
                path: Routes.exchange.toPath,
                name: Routes.exchange.toName,
                builder: (context, state) => const ExchangePage(),
                routes: [
                  GoRoute(
                    path: Routes.exchangeCheck.toPath,
                    name: Routes.exchangeCheck.toName,
                    builder: (context, state) => const ExchangeCheckPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
