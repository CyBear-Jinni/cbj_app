import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_validators.dart';
import 'package:dartz/dartz.dart';

class GenericRgbwLightSwitchState extends ValueObjectCore<String> {
  factory GenericRgbwLightSwitchState(String? input) {
    assert(input != null);
    return GenericRgbwLightSwitchState._(
      validateGenericRgbwLightStateNotEmty(input!),
    );
  }

  const GenericRgbwLightSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class GenericRgbwLightColorTemperature extends ValueObjectCore<String> {
  factory GenericRgbwLightColorTemperature(String? input) {
    assert(input != null);
    return GenericRgbwLightColorTemperature._(
      validateGenericRgbwLightStateNotEmty(input!),
    );
  }

  const GenericRgbwLightColorTemperature._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class GenericRgbwLightBrightness extends ValueObjectCore<String> {
  factory GenericRgbwLightBrightness(String? input) {
    assert(input != null);
    return GenericRgbwLightBrightness._(
      validateGenericRgbwLightBrightnessNotEmty(input!),
    );
  }

  const GenericRgbwLightBrightness._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
