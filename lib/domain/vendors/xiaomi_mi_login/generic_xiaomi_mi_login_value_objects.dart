import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_validators.dart';
import 'package:dartz/dartz.dart';

class GenericXiaomiMiDeviceLoginApiPass extends ValueObjectCoreLogin<String> {
  factory GenericXiaomiMiDeviceLoginApiPass(String? input) {
    assert(input != null);
    return GenericXiaomiMiDeviceLoginApiPass._(
      validateGenericXiaomiMiDeviceLoginPassiNotEmty(input!),
    );
  }

  const GenericXiaomiMiDeviceLoginApiPass._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
