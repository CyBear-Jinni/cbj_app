import 'package:cybear_jinni/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final AuthValueFailure authValueFailure;

  UnexpectedValueError(this.authValueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $authValueFailure');
  }
}
