import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreLoginFailure<String>, String> validateGenericTuyaLoginStringNotEmty(
  String? input,
) {
  if (input != null) {
    return right(input);
  } else {
    return left(
      const CoreLoginFailure.empty(failedValue: 'Failed value is null'),
    );
  }
}
