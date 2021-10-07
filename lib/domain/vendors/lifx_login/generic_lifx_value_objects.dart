import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_validators.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';

class GenericLifxSwitchState extends ValueObjectCoreLogin<String> {
  factory GenericLifxSwitchState(String? input) {
    assert(input != null);
    return GenericLifxSwitchState._(
      validateGenericLifxStateNotEmty(input!),
    );
  }

  const GenericLifxSwitchState._(this.value);

  @override
  final Either<CoreLoginFailure<String>, String> value;
}
