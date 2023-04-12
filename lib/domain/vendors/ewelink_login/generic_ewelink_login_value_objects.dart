import 'package:cybear_jinni/domain/vendors/ewelink_login/generic_ewelink_login_validators.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';

class GenericEwelinkAccountEmail extends ValueObjectCoreLogin<String> {
  factory GenericEwelinkAccountEmail(String? input) {
    assert(input != null);
    return GenericEwelinkAccountEmail._(
      validateGenericEwelinkNotEmpty(input!),
    );
  }

  const GenericEwelinkAccountEmail._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericEwelinkAccountPass extends ValueObjectCoreLogin<String> {
  factory GenericEwelinkAccountPass(String? input) {
    assert(input != null);
    return GenericEwelinkAccountPass._(
      validateGenericEwelinkNotEmpty(input!),
    );
  }

  const GenericEwelinkAccountPass._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
