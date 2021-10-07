import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreLoginFailure<String>, String> validateLoginNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      CoreLoginFailure.empty(
        failedValue: input,
      ),
    );
  }
}

// Either<CoreLoginFailure<String>, String> validateLoginVendorExist(
//   String input,
// ) {
//   if (EnumHelper.stringToDeviceVendor(input) != null) {
//     return right(input);
//   }
//   return left(const CoreLoginFailure.loginTypeDoesNotExist());
// }
