import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_validators.dart';
import 'package:dartz/dartz.dart';

class GenericXiaomiMiAccountEmail extends ValueObjectCoreLogin<String> {
  factory GenericXiaomiMiAccountEmail(String? input) {
    assert(input != null);
    return GenericXiaomiMiAccountEmail._(
      validateGenericXiaomiMiNotEmpty(input!),
    );
  }

  const GenericXiaomiMiAccountEmail._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}

class GenericXiaomiMiAccountPass extends ValueObjectCoreLogin<String> {
  factory GenericXiaomiMiAccountPass(String? input) {
    assert(input != null);
    return GenericXiaomiMiAccountPass._(
      validateGenericXiaomiMiNotEmpty(input!),
    );
  }

  const GenericXiaomiMiAccountPass._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
