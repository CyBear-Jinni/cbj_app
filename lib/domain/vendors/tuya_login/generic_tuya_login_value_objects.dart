import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_validators.dart';
import 'package:dartz/dartz.dart';

class GenericTuyaLoginUserName extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginUserName(String? input) {
    assert(input != null);
    return GenericTuyaLoginUserName._(
      validateGenericTuyaLoginStringNotEmty(input!),
    );
  }

  const GenericTuyaLoginUserName._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericTuyaLoginUserPassword extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginUserPassword(String? input) {
    assert(input != null);
    return GenericTuyaLoginUserPassword._(
      validateGenericTuyaLoginStringNotEmty(input!),
    );
  }

  const GenericTuyaLoginUserPassword._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericTuyaLoginCountryCode extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginCountryCode(String? input) {
    assert(input != null);
    return GenericTuyaLoginCountryCode._(
      validateGenericTuyaLoginStringNotEmty(input!),
    );
  }

  const GenericTuyaLoginCountryCode._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericTuyaLoginBizType extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginBizType(String? input) {
    assert(input != null);
    return GenericTuyaLoginBizType._(
      validateGenericTuyaLoginStringNotEmty(input!),
    );
  }

  const GenericTuyaLoginBizType._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericTuyaLoginRegion extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginRegion(String? input) {
    assert(input != null);
    return GenericTuyaLoginRegion._(
      validateGenericTuyaLoginStringNotEmty(input!),
    );
  }

  const GenericTuyaLoginRegion._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
