
import 'package:flutter/material.dart';
import 'package:tokner/src/config/app_config.dart';
import 'package:tokner/src/presentation/app/app.dart';
import 'package:tokner/src/presentation/theme/theme_manager.dart';

import 'initializer/app_initializer.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();

  runApp(const Application());
}
var themeManager = ThemeManager();

