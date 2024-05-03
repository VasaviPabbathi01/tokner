import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:remote/remote.dart';
import 'package:domain/domain.dart';
import 'package:data/data.dart';

import '../route/app_router.dart';

abstract class ApplicationConfig extends Config {}

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final ApplicationConfig _applicationConfig;

  Future<void> init() async {
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
    logger.init();
    await _applicationConfig.init(); // make sure get-it init before

    await Future.wait([
      SharedConfig.getInstance().init(),
      RemoteConfig.getInstance().init(),
      DomainConfig.getInstance().init(),
      DataConfig.getInstance().init(),
    ]);
  }
}
