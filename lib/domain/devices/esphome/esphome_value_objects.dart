import 'package:cybear_jinni/domain/devices/esphome/esphome_errors.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_failures.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_validators.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class EspHomeValueObjectAbstract<T> {
  const EspHomeValueObjectAbstract();

  Either<EspHomeFailure<T>, T> get value;

  /// Throws [EspHomeUnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw EspHomeUnexpectedValueError(f), id);
  }

  Either<EspHomeFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is EspHomeValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class EspHomeUniqueId extends EspHomeValueObjectAbstract<String?> {
  factory EspHomeUniqueId() {
    return EspHomeUniqueId._(right(const Uuid().v1()));
  }

  factory EspHomeUniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return EspHomeUniqueId._(right(uniqueId));
  }

  const EspHomeUniqueId._(this.value);

  @override
  final Either<EspHomeFailure<String?>, String?> value;
}

class EspHomeRoomName extends EspHomeValueObjectAbstract<String?> {
  factory EspHomeRoomName(String? input) {
    return EspHomeRoomName._(
      validateEspHomeRoomNameNotEmpty(input!),
    );
  }

  const EspHomeRoomName._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeDefaultName extends EspHomeValueObjectAbstract<String?> {
  factory EspHomeDefaultName(String? input) {
    assert(input != null);
    return EspHomeDefaultName._(
      validateEspHomeNotEmpty(input!)
          .flatMap((a) => validateEspHomeMaxNameLength(input, maxLength)),
    );
  }

  const EspHomeDefaultName._(this.value);

  @override
  final Either<EspHomeFailure<String?>, String?> value;

  static const maxLength = 1000;
}

class EspHomeState extends EspHomeValueObjectAbstract<String> {
  factory EspHomeState(String? input) {
    return EspHomeState._(
      validateEspHomeNotEmpty(input!)
          .flatMap((a) => validateEspHomeStateExist(input)),
    );
  }

  const EspHomeState._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeSenderDeviceOs extends EspHomeValueObjectAbstract<String> {
  factory EspHomeSenderDeviceOs(String? input) {
    assert(input != null);
    return EspHomeSenderDeviceOs._(
      validateEspHomeNotEmpty(input!),
    );
  }

  const EspHomeSenderDeviceOs._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeStateMassage extends EspHomeValueObjectAbstract<String> {
  factory EspHomeStateMassage(String? input) {
    assert(input != null);
    return EspHomeStateMassage._(
      validateEspHomeNotEmpty(input!),
    );
  }

  const EspHomeStateMassage._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeSenderDeviceModel extends EspHomeValueObjectAbstract<String> {
  factory EspHomeSenderDeviceModel(String? input) {
    assert(input != null);
    return EspHomeSenderDeviceModel._(
      validateEspHomeNotEmpty(input!),
    );
  }

  const EspHomeSenderDeviceModel._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeSenderId extends EspHomeValueObjectAbstract<String> {
  factory EspHomeSenderId() {
    return EspHomeSenderId._(right(const Uuid().v1()));
  }

  factory EspHomeSenderId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return EspHomeSenderId._(right(uniqueId!));
  }

  const EspHomeSenderId._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeAction extends EspHomeValueObjectAbstract<String> {
  factory EspHomeAction(String? input) {
    assert(input != null);

    if (input == 'false') {
      input = DeviceActions.off.toString();
    } else if (input == 'true') {
      input = DeviceActions.on.toString();
    }
    return EspHomeAction._(
      validateEspHomeNotEmpty(input!)
          .flatMap((a) => validateEspHomeActionExist(input!)),
    );
  }

  const EspHomeAction._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeType extends EspHomeValueObjectAbstract<String> {
  factory EspHomeType(String? input) {
    assert(input != null);
    return EspHomeType._(
      validateEspHomeNotEmpty(input!)
          .flatMap((a) => validateEspHomeTypeExist(input)),
    );
  }

  const EspHomeType._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeCompUuid extends EspHomeValueObjectAbstract<String> {
  factory EspHomeCompUuid(String? input) {
    assert(input != null);
    return EspHomeCompUuid._(
      validateEspHomeNotEmpty(input!),
    );
  }

  const EspHomeCompUuid._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeLastKnownIp extends EspHomeValueObjectAbstract<String> {
  factory EspHomeLastKnownIp(String? input) {
    assert(input != null);
    return EspHomeLastKnownIp._(
      validateEspHomeLastKnownIpNotEmpty(input!),
    );
  }

  const EspHomeLastKnownIp._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomePowerConsumption extends EspHomeValueObjectAbstract<String> {
  factory EspHomePowerConsumption(String input) {
    assert(input != null);
    return EspHomePowerConsumption._(
      validateEspHomeFailurePowerConsumptionNotEmpty(input),
    );
  }

  const EspHomePowerConsumption._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeMdnsName extends EspHomeValueObjectAbstract<String> {
  factory EspHomeMdnsName(String? input) {
    assert(input != null);
    return EspHomeMdnsName._(
      validateEspHomeMdnsNameNotEmpty(input!),
    );
  }

  const EspHomeMdnsName._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}

class EspHomeSecondWiFiName extends EspHomeValueObjectAbstract<String> {
  factory EspHomeSecondWiFiName(String? input) {
    assert(input != null);
    return EspHomeSecondWiFiName._(
      validateEspHomeWiFiNameNotEmpty(input!),
    );
  }

  const EspHomeSecondWiFiName._(this.value);

  @override
  final Either<EspHomeFailure<String>, String> value;
}
