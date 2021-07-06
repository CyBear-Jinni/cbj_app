import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_errors.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_failures.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_validators.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class SonoffS20ValueObjectAbstract<T> {
  const SonoffS20ValueObjectAbstract();

  Either<SonoffS20Failure<T>, T> get value;

  /// Throws [SonoffS20UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw SonoffS20UnexpectedValueError(f), id);
  }

  Either<SonoffS20Failure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is SonoffS20ValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class SonoffS20UniqueId extends SonoffS20ValueObjectAbstract<String?> {
  factory SonoffS20UniqueId() {
    return SonoffS20UniqueId._(right(const Uuid().v1()));
  }

  factory SonoffS20UniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return SonoffS20UniqueId._(right(uniqueId));
  }

  const SonoffS20UniqueId._(this.value);

  @override
  final Either<SonoffS20Failure<String?>, String?> value;
}

class SonoffS20RoomName extends SonoffS20ValueObjectAbstract<String?> {
  factory SonoffS20RoomName(String? input) {
    return SonoffS20RoomName._(
      validateSonoffS20RoomNameNotEmpty(input!),
    );
  }

  const SonoffS20RoomName._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20DefaultName extends SonoffS20ValueObjectAbstract<String?> {
  factory SonoffS20DefaultName(String? input) {
    assert(input != null);
    return SonoffS20DefaultName._(
      validateSonoffS20NotEmpty(input!)
          .flatMap((a) => validateSonoffS20MaxNameLength(input, maxLength)),
    );
  }

  const SonoffS20DefaultName._(this.value);

  @override
  final Either<SonoffS20Failure<String?>, String?> value;

  static const maxLength = 1000;
}

class SonoffS20State extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20State(String? input) {
    return SonoffS20State._(
      validateSonoffS20NotEmpty(input!)
          .flatMap((a) => validateSonoffS20StateExist(input)),
    );
  }

  const SonoffS20State._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20SenderDeviceOs extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20SenderDeviceOs(String? input) {
    assert(input != null);
    return SonoffS20SenderDeviceOs._(
      validateSonoffS20NotEmpty(input!),
    );
  }

  const SonoffS20SenderDeviceOs._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20StateMassage extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20StateMassage(String? input) {
    assert(input != null);
    return SonoffS20StateMassage._(
      validateSonoffS20NotEmpty(input!),
    );
  }

  const SonoffS20StateMassage._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20SenderDeviceModel extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20SenderDeviceModel(String? input) {
    assert(input != null);
    return SonoffS20SenderDeviceModel._(
      validateSonoffS20NotEmpty(input!),
    );
  }

  const SonoffS20SenderDeviceModel._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20SenderId extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20SenderId() {
    return SonoffS20SenderId._(right(const Uuid().v1()));
  }

  factory SonoffS20SenderId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return SonoffS20SenderId._(right(uniqueId!));
  }

  const SonoffS20SenderId._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20Action extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20Action(String? input) {
    assert(input != null);

    if (input == 'false') {
      input = DeviceActions.off.toString();
    } else if (input == 'true') {
      input = DeviceActions.on.toString();
    }
    return SonoffS20Action._(
      validateSonoffS20NotEmpty(input!)
          .flatMap((a) => validateSonoffS20ActionExist(input!)),
    );
  }

  const SonoffS20Action._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20Type extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20Type(String? input) {
    assert(input != null);
    return SonoffS20Type._(
      validateSonoffS20NotEmpty(input!)
          .flatMap((a) => validateSonoffS20TypeExist(input)),
    );
  }

  const SonoffS20Type._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20CompUuid extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20CompUuid(String? input) {
    assert(input != null);
    return SonoffS20CompUuid._(
      validateSonoffS20NotEmpty(input!),
    );
  }

  const SonoffS20CompUuid._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20LastKnownIp extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20LastKnownIp(String? input) {
    assert(input != null);
    return SonoffS20LastKnownIp._(
      validateSonoffS20LastKnownIpNotEmpty(input!),
    );
  }

  const SonoffS20LastKnownIp._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20PowerConsumption extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20PowerConsumption(String input) {
    assert(input != null);
    return SonoffS20PowerConsumption._(
      validateSonoffS20FailurePowerConsumptionNotEmpty(input),
    );
  }

  const SonoffS20PowerConsumption._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20MdnsName extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20MdnsName(String? input) {
    assert(input != null);
    return SonoffS20MdnsName._(
      validateSonoffS20MdnsNameNotEmpty(input!),
    );
  }

  const SonoffS20MdnsName._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}

class SonoffS20SecondWiFiName extends SonoffS20ValueObjectAbstract<String> {
  factory SonoffS20SecondWiFiName(String? input) {
    assert(input != null);
    return SonoffS20SecondWiFiName._(
      validateSonoffS20WiFiNameNotEmpty(input!),
    );
  }

  const SonoffS20SecondWiFiName._(this.value);

  @override
  final Either<SonoffS20Failure<String>, String> value;
}
