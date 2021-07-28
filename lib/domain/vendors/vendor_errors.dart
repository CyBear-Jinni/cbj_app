import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';

class VendorUnexpectedValueError extends Error {
  VendorUnexpectedValueError(this.vendorValueFailure);

  final VendorFailure vendorValueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $vendorValueFailure');
  }
}
