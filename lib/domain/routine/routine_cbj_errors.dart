import 'package:cybear_jinni/domain/routine/routine_cbj_failures.dart';

class RoutineCbjUnexpectedValueError extends Error {
  RoutineCbjUnexpectedValueError(this.routinesValueFailure);

  final RoutineCbjFailure routinesValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString(
      '$explanation Failure was: $routinesValueFailure',
    );
  }
}
