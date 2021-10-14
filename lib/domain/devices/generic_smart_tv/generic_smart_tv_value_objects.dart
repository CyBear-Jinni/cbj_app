import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_validators.dart';
import 'package:dartz/dartz.dart';


class GenericSmartTvSwitchState extends ValueObjectCore<String> {
  factory GenericSmartTvSwitchState(String? input) {
    assert(input != null);
    return GenericSmartTvSwitchState._(
      validateGenericSmartTvStateNotEmty(input!),
    );
  }

  const GenericSmartTvSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
