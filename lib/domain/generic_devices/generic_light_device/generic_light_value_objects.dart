import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_validators.dart';
import 'package:dartz/dartz.dart';

class GenericLightSwitchState extends ValueObjectCore<String> {
  factory GenericLightSwitchState(String? input) {
    assert(input != null);
    return GenericLightSwitchState._(
      validateGenericLightStateNotEmpty(input!),
    );
  }

  const GenericLightSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  static List<String> lightValidActions() {
    return lightAllValidActions();
  }
}
