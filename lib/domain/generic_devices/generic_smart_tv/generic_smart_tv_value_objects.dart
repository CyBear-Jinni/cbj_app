import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_validators.dart';
import 'package:dartz/dartz.dart';

class GenericSmartTvSwitchState extends ValueObjectCore<String> {
  factory GenericSmartTvSwitchState(String? input) {
    assert(input != null);
    return GenericSmartTvSwitchState._(
      validateGenericSmartTvStateNotEmpty(input!),
    );
  }

  const GenericSmartTvSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of smart tv state
  static List<String> smartTvValidActions() {
    return smartTvAllValidActions();
  }
}

class GenericSmartTvOpenUrl extends ValueObjectCore<String> {
  factory GenericSmartTvOpenUrl(String? input) {
    assert(input != null);
    return GenericSmartTvOpenUrl._(
      validateGenericSmartTvUrlValidation(input!),
    );
  }

  const GenericSmartTvOpenUrl._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of smart tv state
  static List<String> smartTvValidActions() {
    return smartTvAllValidActions();
  }
}

class GenericSmartTvPausePlayState extends ValueObjectCore<String> {
  factory GenericSmartTvPausePlayState(String? input) {
    assert(input != null);
    return GenericSmartTvPausePlayState._(
      validateGenericSmartTvPausePlayStateValidation(input!),
    );
  }

  const GenericSmartTvPausePlayState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of smart tv state
  static List<String> smartTvValidActions() {
    return smartTvAllValidActions();
  }
}

class GenericSmartTvSkipBackOrForward extends ValueObjectCore<String> {
  factory GenericSmartTvSkipBackOrForward(String? input) {
    assert(input != null);
    return GenericSmartTvSkipBackOrForward._(
      validateGenericSmartTvSkipBackOrForwardValidation(input!),
    );
  }

  const GenericSmartTvSkipBackOrForward._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of smart tv state
  static List<String> smartTvValidActions() {
    return smartTvAllValidActions();
  }
}

class GenericSmartTvVolume extends ValueObjectCore<String> {
  factory GenericSmartTvVolume(String? input) {
    assert(input != null);
    return GenericSmartTvVolume._(
      validateGenericSmartTvVolumeValidation(input!),
    );
  }

  const GenericSmartTvVolume._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  /// All valid actions of smart tv state
  static List<String> smartTvValidActions() {
    return smartTvAllValidActions();
  }
}
