import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_validators.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';

class GenericEspHomeDeviceLoginApiPass extends ValueObjectCoreLogin<String> {
  factory GenericEspHomeDeviceLoginApiPass(String? input) {
    assert(input != null);
    return GenericEspHomeDeviceLoginApiPass._(
      validateGenericEspHomeDeviceLoginPassiNotEmty(input!),
    );
  }

  const GenericEspHomeDeviceLoginApiPass._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
