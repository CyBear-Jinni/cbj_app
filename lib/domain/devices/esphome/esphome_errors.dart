import 'package:cybear_jinni/domain/devices/esphome/esphome_failures.dart';

class EspHomeUnexpectedValueError extends Error {
  EspHomeUnexpectedValueError(this.deviceValueFailure);

  final EspHomeFailure deviceValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $deviceValueFailure');
  }
}
