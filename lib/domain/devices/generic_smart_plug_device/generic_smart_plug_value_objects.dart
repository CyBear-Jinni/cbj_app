import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_plug_device/generic_smart_plug_validators.dart';
import 'package:dartz/dartz.dart';

class GenericSmartPlugState extends ValueObjectCore<String> {
  factory GenericSmartPlugState(String? input) {
    assert(input != null);
    return GenericSmartPlugState._(
      validateGenericSmartPlugStateNotEmty(input!),
    );
  }

  const GenericSmartPlugState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
