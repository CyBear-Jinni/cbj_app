import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_light_with_brightness_device/generic_light_with_brightness_validators.dart';
import 'package:dartz/dartz.dart';

class GenericLightWithBrightnessSwitchState extends ValueObjectCore<String> {
  factory GenericLightWithBrightnessSwitchState(String? input) {
    assert(input != null);
    return GenericLightWithBrightnessSwitchState._(
      validateGenericLightWithBrightnessStateNotEmpty(input!),
    );
  }

  const GenericLightWithBrightnessSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  static List<String> lightValidActions() {
    return lightAllValidActions();
  }
}

class GenericLightBrightnessBrightness extends ValueObjectCore<String> {
  factory GenericLightBrightnessBrightness(String? input) {
    assert(input != null);
    return GenericLightBrightnessBrightness._(
      validateGenericLightBrightnessNotEmpty(input!),
    );
  }

  const GenericLightBrightnessBrightness._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
