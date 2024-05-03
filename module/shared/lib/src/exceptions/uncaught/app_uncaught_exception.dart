import '../../../shared.dart';

class AppUncaughtException extends AppException {
  const AppUncaughtException(this.rootError, {this.data}) : super(AppExceptionType.uncaught);

  final Object? rootError;
  final dynamic data;

  @override
  String toString() {
    return 'rootError: ${rootError?.toString()}';
  }
}
