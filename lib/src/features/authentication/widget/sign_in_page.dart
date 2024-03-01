import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:case_test/src/app/widgets/components/app_elevated_button.dart';

import 'authentication_scope.dart';
// import 'authentication_scope.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Padding(
        padding: context.padding.mainSides,
        child: Center(
          child: AppElevatedButton(
            onPressed: () =>
                AuthenticationScope.controllerOf(context).signInAnonymously(),
            label: 'Войти',
          ),
        ),
      ),
    );
  }
}
