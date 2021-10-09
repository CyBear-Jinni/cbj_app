import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';

class VendorUnexpectedValueError extends Error {
  VendorUnexpectedValueError(this.vendorValueFailure);

  final CoreLoginFailure vendorValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $vendorValueFailure');
  }
}
