import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_validators.dart';
import 'package:dartz/dartz.dart';

class GenericBlindsSwitchState extends ValueObjectCore<String> {
  factory GenericBlindsSwitchState(String? input) {
    assert(input != null);
    return GenericBlindsSwitchState._(
      validateGenericBlindsStateNotEmpty(input!),
    );
  }

  const GenericBlindsSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  static List<String> blindsValidActions() {
    return blindsAllValidActions();
  }
}
