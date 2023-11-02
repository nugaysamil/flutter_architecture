import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable
// This class is used to initiliaze the application process
final class ApplicationInitialize {
  // project basic required initialize
  Future<void> make() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error.toString());
    });
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // TODO: Splach
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      // crashlytics log insets here
      // custom service or custom logger insert here

      // Todo: add custom logger
      Logger().e(
        details.exceptionAsString(),
      );
    };
    // Dependency initialize
    // Envied
  }
}
