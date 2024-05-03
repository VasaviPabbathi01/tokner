
import 'package:shared/shared.dart';

import '../base_use_case.dart';
import '../io/base_input.dart';

abstract class BaseFutureUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logger.log('FutureUseCase Input: $input');
      }
      final output = await buildUseCase(input);
      if (LogConfig.enableLogUseCaseOutput) {
        logger.log('FutureUseCase Output: $output');
      }

      return output;
    } on Exception catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logger.logE('FutureUseCase Error: $e');
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
