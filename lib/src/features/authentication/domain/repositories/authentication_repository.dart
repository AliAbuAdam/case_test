import 'dart:async';

import '../model/user.dart';

abstract interface class IAuthenticationRepository {
  Stream<User> userChanges();
  FutureOr<User> getUser();
  Future<void> signInAnonymously();
  Future<void> signOut();

  /* Future<void> sendSignInWithEmailLink(String email);
  Future<void> signInWithEmailLink(String email, String emailLink);
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signInWithFacebook();
  Future<void> signInWithApple();
  Future<void> signInWithTwitter();
  Future<void> signInWithGithub();
  Future<void> signInWithPhoneNumber(String phoneNumber);
  Future<void> sendPasswordResetEmail(String email);
  Future<void> confirmPasswordReset(String code, String newPassword);
  Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<void> deleteUser();
  Future<bool> isSignedIn();
  Future<void> signInWithGoogle();
   */
}
