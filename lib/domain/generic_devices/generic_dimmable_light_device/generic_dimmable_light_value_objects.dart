import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_validators.dart';
import 'package:dartz/dartz.dart';

class GenericDimmableLightSwitchState extends ValueObjectCore<String> {
  factory GenericDimmableLightSwitchState(String? input) {
    assert(input != null);
    return GenericDimmableLightSwitchState._(
      validateGenericDimmableLightStateNotEmpty(input!),
    );
  }

  const GenericDimmableLightSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  static List<String> lightValidActions() {
    return lightAllValidActions();
  }
}

class GenericDimmableLightBrightness extends ValueObjectCore<String> {
  factory GenericDimmableLightBrightness(String? input) {
    assert(input != null);
    String tempInput = input!;

    return GenericDimmableLightBrightness._(
      validateGenericDimmableLightNotEmpty(tempInput),
    );
  }

  factory GenericDimmableLightBrightness.fromDouble(double input) {
    return GenericDimmableLightBrightness._(
      validateGenericDimmableLightNotEmpty(
        convertDecimalPresentagetToIntegerPercentage(input).toString(),
      ),
    );
  }

  const GenericDimmableLightBrightness._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  // Convert percentage 0.0-1.0 numbers to 0-100 with the same percentage
  static int convertDecimalPresentagetToIntegerPercentage(double number) {
    const double oldMax = 1.0;
    const double oldMin = 0;
    const double oldRange = oldMax - oldMin;

    const int newMax = 100;
    const int newMin = 0;
    const int newRange = newMax - newMin;

    final double newValue =
        (((number - oldMin) * newRange) / oldRange) + newMin;

    return newValue.toInt();
  }

  /// From 100-0 will be converted to 1.0-0.0
  double backToDecimalPointBrightness() {
    return value.fold((l) {
      throw Exception('Number is not valid $l');
    }, (r) {
      final int number = int.parse(r);

      const int oldMax = 100;
      const int oldMin = 0;
      const int oldRange = oldMax - oldMin;

      const double newMax = 1.0;
      const double newMin = 0;
      const double newRange = newMax - newMin;

      final double newValue =
          (((number - oldMin) * newRange) / oldRange) + newMin;

      return newValue;
    });
  }
}
