import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_validators.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:dartz/dartz.dart';

class GenericRgbwLightSwitchState extends ValueObjectCore<String> {
  factory GenericRgbwLightSwitchState(String? input) {
    assert(input != null);
    if (input!.toLowerCase() == true.toString()) {
      input = DeviceActions.on.toString();
    } else if (input.toLowerCase() == false.toString()) {
      input = DeviceActions.off.toString();
    }
    return GenericRgbwLightSwitchState._(
      validateGenericRgbwLightStateNotEmpty(input),
    );
  }

  const GenericRgbwLightSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of rgb light state
  static List<String> rgbwLightValidActions() {
    return rgbwLightAllValidActions();
  }
}

class GenericRgbwLightColorTemperature extends ValueObjectCore<String> {
  factory GenericRgbwLightColorTemperature(String? input) {
    assert(input != null);
    return GenericRgbwLightColorTemperature._(
      validateGenericRgbwLightStateNotEmpty(input!),
    );
  }

  const GenericRgbwLightColorTemperature._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

/// Alpha, from 0.0 to 1.0. The describes the transparency of the color.
/// A value of 0.0 is fully transparent, and 1.0 is fully opaque.
class GenericRgbwLightColorAlpha extends ValueObjectCore<String> {
  factory GenericRgbwLightColorAlpha(String? input) {
    assert(input != null);
    return GenericRgbwLightColorAlpha._(
      validateGenericRgbwLightAlphaNotEmpty(input!)
          .flatMap((a) => validateGenericRgbwLightStringIsDouble(a)),
    );
  }

  const GenericRgbwLightColorAlpha._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

/// Hue, from 0.0 to 360.0. Describes which color of the spectrum is
/// represented. A value of 0.0 represents red, as does 360.0. Values in
/// between go through all the hues representable in RGB. You can think of
/// this as selecting which pigment will be added to a color.
class GenericRgbwLightColorHue extends ValueObjectCore<String> {
  factory GenericRgbwLightColorHue(String? input) {
    assert(input != null);
    return GenericRgbwLightColorHue._(
      validateGenericRgbwLightStringNotEmpty(input!)
          .flatMap((a) => validateGenericRgbwLightStringIsDouble(a)),
    );
  }

  const GenericRgbwLightColorHue._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

/// Saturation, from 0.0 to 1.0. This describes how colorful the color is.
/// 0.0 implies a shade of grey (i.e. no pigment), and 1.0 implies a color as
/// vibrant as that hue gets. You can think of this as the equivalent of
/// how much of a pigment is added.
class GenericRgbwLightColorSaturation extends ValueObjectCore<String> {
  factory GenericRgbwLightColorSaturation(String? input) {
    assert(input != null);
    return GenericRgbwLightColorSaturation._(
      validateGenericRgbwLightStringNotEmpty(input!)
          .flatMap((a) => validateGenericRgbwLightStringIsDouble(a)),
    );
  }

  const GenericRgbwLightColorSaturation._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

/// Value, from 0.0 to 1.0. The "value" of a color that, in this context,
/// describes how bright a color is. A value of 0.0 indicates black, and 1.0
/// indicates full intensity color. You can think of this as the equivalent of
/// removing black from the color as value increases.
class GenericRgbwLightColorValue extends ValueObjectCore<String> {
  factory GenericRgbwLightColorValue(String? input) {
    assert(input != null);
    return GenericRgbwLightColorValue._(
      validateGenericRgbwLightStringNotEmpty(input!)
          .flatMap((a) => validateGenericRgbwLightStringIsDouble(a)),
    );
  }

  const GenericRgbwLightColorValue._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class GenericRgbwLightBrightness extends ValueObjectCore<String> {
  factory GenericRgbwLightBrightness(String? input) {
    assert(input != null);
    return GenericRgbwLightBrightness._(
      validateGenericRgbwLightBrightnessNotEmpty(input!),
    );
  }

  const GenericRgbwLightBrightness._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
