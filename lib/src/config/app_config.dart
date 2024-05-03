import 'package:flutter/services.dart';

import '../../initializer/app_initializer.dart';
import '../presentation/di/di.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {

    await configureInjection();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}