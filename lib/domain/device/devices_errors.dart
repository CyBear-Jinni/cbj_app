import 'package:cybearjinni/domain/device/devices_failures.dart';

class DevicesUnexpectedValueError extends Error {
  DevicesUnexpectedValueError(this.deviceValueFailure);

  final DevicesFailure deviceValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $deviceValueFailure');
  }
}
