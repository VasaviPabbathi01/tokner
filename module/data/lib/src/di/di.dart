import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(
  initializerName: r'$initDataGetIt'
)
final GetIt getIt = GetIt.instance;

Future configureDataInjection() async => GetItInjectableX(getIt).$initDataGetIt();