import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:meta/meta.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}

