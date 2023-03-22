import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';

class CoreUnexpectedValueError extends Error {
  CoreUnexpectedValueError(this.deviceValueFailure);

  final CoreFailure deviceValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $deviceValueFailure');
  }
}
