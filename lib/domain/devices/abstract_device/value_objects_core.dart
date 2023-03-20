import 'package:cybear_jinni/domain/devices/abstract_device/core_errors.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/core_validators.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObjectCore<T> {
  const ValueObjectCore();

  Either<CoreFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw CoreUnexpectedValueError(f), id);
  }

  Either<CoreFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObjectCore<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class CoreUniqueId extends ValueObjectCore<String> {
  factory CoreUniqueId() {
    return CoreUniqueId._(right(const Uuid().v1()));
  }

  factory CoreUniqueId.fromUniqueString(String uniqueId) {
    return CoreUniqueId._(right(uniqueId));
  }

  const CoreUniqueId._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

/// Object that will store the unique id of the device that each vendor send
class VendorUniqueId extends ValueObjectCore<String> {
  factory VendorUniqueId() {
    return VendorUniqueId._(right(const Uuid().v1()));
  }

  factory VendorUniqueId.fromUniqueString(String uniqueId) {
    return VendorUniqueId._(right(uniqueId));
  }

  const VendorUniqueId._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceDefaultName extends ValueObjectCore<String?> {
  factory DeviceDefaultName(String? input) {
    assert(input != null);
    return DeviceDefaultName._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceMaxNameLength(input, maxLength)),
    );
  }

  const DeviceDefaultName._(this.value);

  @override
  final Either<CoreFailure<String?>, String?> value;

  static const maxLength = 1000;
}

class EntityState extends ValueObjectCore<String> {
  factory EntityState(String? input) {
    return EntityState._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceStateExist(input)),
    );
  }

  const EntityState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceSenderDeviceOs extends ValueObjectCore<String> {
  factory DeviceSenderDeviceOs(String? input) {
    assert(input != null);
    return DeviceSenderDeviceOs._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceSenderDeviceOs._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceStateMassage extends ValueObjectCore<String> {
  factory DeviceStateMassage(String? input) {
    assert(input != null);
    return DeviceStateMassage._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceStateMassage._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceSenderDeviceModel extends ValueObjectCore<String> {
  factory DeviceSenderDeviceModel(String? input) {
    assert(input != null);
    return DeviceSenderDeviceModel._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceSenderDeviceModel._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceSenderId extends ValueObjectCore<String> {
  factory DeviceSenderId() {
    return DeviceSenderId._(right(const Uuid().v1()));
  }

  factory DeviceSenderId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return DeviceSenderId._(right(uniqueId!));
  }

  const DeviceSenderId._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceAction extends ValueObjectCore<String> {
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
  final Either<CoreFailure<String>, String> value;
}

class DeviceType extends ValueObjectCore<String> {
  factory DeviceType(String? input) {
    assert(input != null);
    return DeviceType._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceTypeExist(input)),
    );
  }

  const DeviceType._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceVendor extends ValueObjectCore<String> {
  factory DeviceVendor(String? input) {
    assert(input != null);
    return DeviceVendor._(
      validateDeviceNotEmpty(input!)
          .flatMap((a) => validateDeviceVendorExist(input)),
    );
  }

  const DeviceVendor._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceCompUuid extends ValueObjectCore<String> {
  factory DeviceCompUuid(String? input) {
    assert(input != null);
    return DeviceCompUuid._(
      validateDeviceNotEmpty(input!),
    );
  }

  const DeviceCompUuid._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceLastKnownIp extends ValueObjectCore<String> {
  factory DeviceLastKnownIp(String? input) {
    assert(input != null);
    return DeviceLastKnownIp._(
      validateLastKnownIpNotEmpty(input!),
    );
  }

  const DeviceLastKnownIp._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DevicePowerConsumption extends ValueObjectCore<String> {
  factory DevicePowerConsumption(String input) {
    return DevicePowerConsumption._(
      validatePowerConsumptionNotEmpty(input),
    );
  }

  const DevicePowerConsumption._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceMdnsName extends ValueObjectCore<String> {
  factory DeviceMdnsName(String? input) {
    assert(input != null);
    return DeviceMdnsName._(
      validateMdnsNameNotEmpty(input!),
    );
  }

  const DeviceMdnsName._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}

class DeviceSecondWiFiName extends ValueObjectCore<String> {
  factory DeviceSecondWiFiName(String? input) {
    assert(input != null);
    return DeviceSecondWiFiName._(
      validateWiFiNameNotEmpty(input!),
    );
  }

  const DeviceSecondWiFiName._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;
}
