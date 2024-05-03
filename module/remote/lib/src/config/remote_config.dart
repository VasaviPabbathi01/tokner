import '../di/di.dart' as di;
import 'package:shared/shared.dart';

class RemoteConfig extends Config {
  RemoteConfig._();

  factory RemoteConfig.getInstance() {
    return _instance;
  }

  static final RemoteConfig _instance = RemoteConfig._();

  @override
  Future<void> config() async {
    await di.configureRemoteInjection();

  }
}
