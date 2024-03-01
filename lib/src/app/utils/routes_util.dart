enum Routes {
  root,
  signIn,
  signUp,
  profile,
  settings,

  // Exchange
  exchange,
  exchangeCheck,
}

extension RoutesExtension on Routes {
  String get toPath {
    switch (this) {
      // Root
      case Routes.root:
        return '/';

      // Authorization
      case Routes.signIn:
        return 'sign_in';

      case Routes.signUp:
        return 'sign_up';

      // Profile
      case Routes.profile:
        return 'profile';

      case Routes.settings:
        return 'settings';

      // Exchange
      case Routes.exchange:
        return 'exchange';

      case Routes.exchangeCheck:
        return 'exchange-check';
    }
  }

  String get toName {
    switch (this) {
      // Root
      case Routes.root:
        return 'root';

      // Authorization
      case Routes.signIn:
        return 'sign in';

      case Routes.signUp:
        return 'sign up';

      // Profile
      case Routes.profile:
        return 'profile';

      case Routes.settings:
        return 'settings';

      // Exchange
      case Routes.exchange:
        return 'exchange';

      case Routes.exchangeCheck:
        return 'exchange check';
    }
  }
}
