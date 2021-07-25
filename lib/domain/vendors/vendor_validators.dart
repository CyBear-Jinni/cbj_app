import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:dartz/dartz.dart';

Either<VendorFailure<String>, String> validVendorNameNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(VendorFailure.empty(
      failedValue: input,
    ));
  }
}
