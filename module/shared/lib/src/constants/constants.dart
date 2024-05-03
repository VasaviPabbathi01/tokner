import 'dart:developer';

import 'package:enum_to_string/enum_to_string.dart';

enum Flavor { dev, stag, prod }

class Constants {
  const Constants({
    required this.endpoint,
  });

  factory Constants.shared() {
    if (_instance != null) {
      return _instance!;
    }

    final flavor = EnumToString.fromString(Flavor.values, const String.fromEnvironment('FLAVOR'));

    log('flavor: $flavor');

    switch (flavor) {
      case Flavor.prod:
        _instance = Constants._prod();
        break;
      case Flavor.stag:
        _instance = Constants._stag();
        break;
      case Flavor.dev:
      default:
        _instance = Constants._dev();
    }

    return _instance!;
  }

  factory Constants._dev() {
    return const Constants(
      endpoint: 'https://dummy.restapiexample.com/api/v1',
    );
  }

  factory Constants._prod() {
    return const Constants(
      endpoint: 'https://dummy.restapiexample.com/api/v1',
    );
  }

  factory Constants._stag() {
    return const Constants(
      endpoint: 'https://dummy.restapiexample.com/api/v1',
    );
  }

  final String endpoint;
  static Constants? _instance;
}
