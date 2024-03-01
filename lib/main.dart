import 'dart:async';

import 'package:flutter/material.dart';
import 'package:l/l.dart';
import 'package:case_test/src/app/utils/logger_util.dart';
import 'package:case_test/src/app/widgets/app.dart';
import 'package:case_test/src/features/dependencies/initialization/initialization.dart';
import 'package:case_test/src/features/dependencies/widgets/dependencies_scope.dart';
import 'package:case_test/src/features/dependencies/widgets/init_splash_screen.dart';

void main() => l.capture<void>(
      () => runZonedGuarded<void>(
        () {
          final initialization = InitializationExecutor();
          runApp(
            DependenciesScope(
              initialization: initialization(),
              splashScreen: const InitSplashScreen(),
              child: const App(),
            ),
          );
        },
        l.e,
      ),
      const LogOptions(
        handlePrint: true,
        messageFormatting: LoggerUtil.messageFormatting,
        outputInRelease: false,
        printColors: true,
      ),
    );
