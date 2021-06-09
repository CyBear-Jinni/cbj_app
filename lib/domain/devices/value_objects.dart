import 'package:cybear_jinni/domain/devices/devices_errors.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/devices_validators.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
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

class DeviceUniqueId extends DevicesValueObjectAbstract<String?> {
  factory DeviceUniqueId() {
    return DeviceUniqueId._(right(const Uuid().v1()));
  }

  factory DeviceUniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return DeviceUniqueId._(right(uniqueId));
  }

  const DeviceUniqueId._(this.value);

  @override
  final Either<DevicesFailure<String?>, String?> value;
}

class DeviceDefaultName extends DevicesValueObjectAbstract<String?> {
  factory DeviceDefaultName(String? input) {
    assert(input != null);
    return DeviceDefaultName._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceMaxNameLength(input, maxLength)),
    );
  }

  const DeviceDefaultName._(this.value);

  @override
  final Either<DevicesFailure<String?>, String?> value;

  static const maxLength = 1000;
}

class DeviceState extends DevicesValueObjectAbstract<String> {
  factory DeviceState(String? input) {
    return DeviceState._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceStateExist(input)),
    );
  }

  const DeviceState._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceSenderDeviceOs extends DevicesValueObjectAbstract<String> {
  factory DeviceSenderDeviceOs(String? input) {
    assert(input != null);
    return DeviceSenderDeviceOs._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceSenderDeviceOs._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceStateMassage extends DevicesValueObjectAbstract<String> {
  factory DeviceStateMassage(String? input) {
    assert(input != null);
    return DeviceStateMassage._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceStateMassage._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceSenderDeviceModel extends DevicesValueObjectAbstract<String> {
  factory DeviceSenderDeviceModel(String? input) {
    assert(input != null);
    return DeviceSenderDeviceModel._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceSenderDeviceModel._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceSenderId extends DevicesValueObjectAbstract<String> {
  factory DeviceSenderId() {
    return DeviceSenderId._(right(const Uuid().v1()));
  }

  factory DeviceSenderId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return DeviceSenderId._(right(uniqueId!));
  }

  const DeviceSenderId._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceAction extends DevicesValueObjectAbstract<String> {
  factory DeviceAction(String? input) {
    assert(input != null);

    if (input == 'false') {
      input = DeviceActions.off.toString();
    } else if (input == 'true') {
      input = DeviceActions.on.toString();
    }
    return DeviceAction._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceActionExist(input!)),
    );
  }

  const DeviceAction._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceType extends DevicesValueObjectAbstract<String> {
  factory DeviceType(String? input) {
    assert(input != null);
    return DeviceType._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceTypeExist(input)),
    );
  }

  const DeviceType._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceCompUuid extends DevicesValueObjectAbstract<String> {
  factory DeviceCompUuid(String? input) {
    assert(input != null);
    return DeviceCompUuid._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceCompUuid._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DeviceLastKnownIp extends DevicesValueObjectAbstract<String> {
  factory DeviceLastKnownIp(String input) {
    assert(input != null);
    return DeviceLastKnownIp._(
      validateDeviceNotEmpty(input)
          .flatMap((a) => validateDeviceTypeExist(input)),
    );
  }

  const DeviceLastKnownIp._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}

class DevicePowerConsumption extends DevicesValueObjectAbstract<String> {
  factory DevicePowerConsumption(String input) {
    assert(input != null);
    return DevicePowerConsumption._(
      validatePowerConsumptionNotEmpty(input),
    );
  }

  const DevicePowerConsumption._(this.value);

  @override
  final Either<DevicesFailure<String>, String> value;
}
