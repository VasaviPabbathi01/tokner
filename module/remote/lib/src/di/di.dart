import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';


@InjectableInit(
  initializerName: r'$initRemoteGetIt'
)
final GetIt getIt = GetIt.instance;

Future configureRemoteInjection() async => GetItInjectableX(getIt).$initRemoteGetIt();