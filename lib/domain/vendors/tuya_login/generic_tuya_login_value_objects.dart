import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_validators.dart';
import 'package:dartz/dartz.dart';

/// Email of the user
class GenericTuyaLoginUserName extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginUserName(String? input) {
    assert(input != null);
    return GenericTuyaLoginUserName._(
      validateGenericTuyaLoginStringNotEmty(input),
    );
  }

  const GenericTuyaLoginUserName._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

/// Password of the user
class GenericTuyaLoginUserPassword extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginUserPassword(String? input) {
    assert(input != null);
    return GenericTuyaLoginUserPassword._(
      validateGenericTuyaLoginStringNotEmty(input),
    );
  }

  const GenericTuyaLoginUserPassword._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

/// Country code (International dialing number) sometimes can be called
/// "Country Calling Code" without the +.
/// You can yours from here https://www.countrycode.org
class GenericTuyaLoginCountryCode extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginCountryCode(String? input) {
    assert(input != null);
    return GenericTuyaLoginCountryCode._(
      validateGenericTuyaLoginStringNotEmty(input),
    );
  }

  const GenericTuyaLoginCountryCode._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

/// App business can be: tuya, smart_life, jinvoo_smart
class GenericTuyaLoginBizType extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginBizType(String? input) {
    assert(input != null);
    return GenericTuyaLoginBizType._(
      validateGenericTuyaLoginStringNotEmty(input),
    );
  }

  const GenericTuyaLoginBizType._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

/// Region of the user, can be cn, eu, us
class GenericTuyaLoginRegion extends ValueObjectCoreLogin<String> {
  factory GenericTuyaLoginRegion(String? input) {
    assert(input != null);
    return GenericTuyaLoginRegion._(
      validateGenericTuyaLoginStringNotEmty(input),
    );
  }

  const GenericTuyaLoginRegion._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
