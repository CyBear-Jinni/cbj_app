import 'package:cybear_jinni/domain/devices/devices_failures.dart';

class DevicesUnexpectedValueError extends Error {
  DevicesUnexpectedValueError(this.authValueFailure);

  final DevicesFailure authValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $authValueFailure');
  }
}
