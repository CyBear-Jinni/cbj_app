import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_empty_device/generic_empty_validators.dart';
import 'package:dartz/dartz.dart';

class GenericEmptySwitchState extends ValueObjectCore<String> {
  factory GenericEmptySwitchState(String? input) {
    assert(input != null);
    return GenericEmptySwitchState._(
      validateGenericEmptyStateNotEmpty(input!),
    );
  }

  const GenericEmptySwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of empty device state
  static List<String> emptyDeviceValidActions() {
    return emptyDeviceAllValidActions();
  }
}
