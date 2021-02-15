import 'package:cybear_jinni/domain/devices/devices_errors.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/devices_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class DevicesValueObjectAbstract<T> {
  const DevicesValueObjectAbstract();

  Either<DevicesFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw DevicesUnexpectedValueError(f), id);
  }

  Either<DevicesFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is DevicesValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class DeviceUniqueId extends DevicesValueObjectAbstract<String> {
  factory DeviceUniqueId() {
    return DeviceUniqueId._(right(Uuid().v1()));
  }

  factory DeviceUniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return DeviceUniqueId._(right(uniqueId));
  }

  DeviceUniqueId._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceDefaultName extends DevicesValueObjectAbstract<String> {
  @override
  final Either<DevicesFailure<String>, String> value;

  static const maxLength = 1000;

  factory DeviceDefaultName(String input) {
    assert(input != null);
    return DeviceDefaultName._(
      validateDeviceNotEmpty(input)
          .flatMap((a) => validateDeviceMaxNameLength(input, maxLength)),
    );
  }

  const DeviceDefaultName._(this.value);
}

class DeviceState extends DevicesValueObjectAbstract<String> {
  @override
  final Either<DevicesFailure<String>, String> value;

  factory DeviceState(String input) {
    assert(input != null);
    return DeviceState._(
      validateDeviceNotEmpty(input)
          .flatMap((a) => validateDeviceStateExist(input)),
    );
  }

  const DeviceState._(this.value);
}

class DeviceType extends DevicesValueObjectAbstract<String> {
  @override
  final Either<DevicesFailure<String>, String> value;

  factory DeviceType(String input) {
    assert(input != null);
    return DeviceType._(
      validateDeviceNotEmpty(input)
          .flatMap((a) => validateDeviceTypeExist(input)),
    );
  }

  const DeviceType._(this.value);
}
