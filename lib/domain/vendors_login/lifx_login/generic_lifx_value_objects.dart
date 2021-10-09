import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/vendors_login/lifx_login/generic_lifx_validators.dart';
import 'package:dartz/dartz.dart';

class GenericLifxSwitchState extends ValueObjectCore<String> {
  factory GenericLifxSwitchState(String? input) {
    assert(input != null);
    return GenericLifxSwitchState._(
      validateGenericLifxStateNotEmty(input!),
    );
  }

  const GenericLifxSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
