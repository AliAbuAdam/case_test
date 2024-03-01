part of 'extensions.dart';

extension AuthExt on BuildContext {
  AuthenticatedUser get user =>
      AuthenticationScope.userOf(this) as AuthenticatedUser;
}
