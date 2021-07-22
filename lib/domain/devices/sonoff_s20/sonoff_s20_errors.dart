import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_failures.dart';

class SonoffS20UnexpectedValueError extends Error {
  SonoffS20UnexpectedValueError(this.deviceValueFailure);

  final SonoffS20Failure deviceValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $deviceValueFailure');
  }
}
