import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';

class CreateHomeUnexpectedValueError extends Error {
  CreateHomeUnexpectedValueError(this.createValueFailure);

  final CreateHomeFailure createValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $createValueFailure');
  }
}
