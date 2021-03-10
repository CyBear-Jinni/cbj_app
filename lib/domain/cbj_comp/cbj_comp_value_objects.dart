import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_errors.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_validators.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class CBJCompValueObjectAbstract<T> {
  const CBJCompValueObjectAbstract();

  Either<CBJCompFailure<T>, T> get value;

  /// Throws [CBJCompUnexpectedValueError] containing the [CBJCompFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw CBJCompUnexpectedValueError(f), id);
  }

  /// Throws [CBJCompUnexpectedValueError] containing the [CBJCompFailure]
  T getOrNull() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => null, id);
  }

  Either<CBJCompFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is CBJCompValueObjectAbstract<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class CBJCompUniqueId extends CBJCompValueObjectAbstract<String> {
  factory CBJCompUniqueId() {
    return CBJCompUniqueId._(right(Uuid().v1()));
  }

  factory CBJCompUniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return CBJCompUniqueId._(right(uniqueId));
  }

  CBJCompUniqueId._(this.value);

  @override
  final Either<CBJCompFailure<String>, String> value;
}

class CBJCompRoomId extends CBJCompValueObjectAbstract<String> {
  factory CBJCompRoomId() {
    return CBJCompRoomId._(right(Uuid().v1()));
  }

  factory CBJCompRoomId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return CBJCompRoomId._(right(uniqueId));
  }

  CBJCompRoomId._(this.value);

  @override
  final Either<CBJCompFailure<String>, String> value;
}

class CBJCompMacAddr extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  static const maxLength = 1000;

  factory CBJCompMacAddr(String input) {
    assert(input != null);
    return CBJCompMacAddr._(
      validateCBJCompNotEmpty(input)
          .flatMap((a) => validateCBJCompMaxNameLength(input, maxLength)),
    );
  }

  const CBJCompMacAddr._(this.value);
}

class CBJCompDefaultName extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  static const maxLength = 1000;

  factory CBJCompDefaultName(String input) {
    assert(input != null);
    return CBJCompDefaultName._(
      validateCBJCompNotEmpty(input)
          .flatMap((a) => validateCBJCompMaxNameLength(input, maxLength)),
    );
  }

  const CBJCompDefaultName._(this.value);
}

class CBJCompDevices extends CBJCompValueObjectAbstract<KtList<DeviceEntity>> {
  @override
  final Either<CBJCompFailure<KtList<DeviceEntity>>, KtList<DeviceEntity>>
      value;

  factory CBJCompDevices(KtList<DeviceEntity> input) {
    return CBJCompDevices._(validateCBJCompDevicesNotNull(input));
  }

  const CBJCompDevices._(this.value);
}

class CBJCompOs extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  factory CBJCompOs(String input) {
    assert(input != null);
    return CBJCompOs._(
      validateCBJCompNotEmpty(input),
    );
  }

  const CBJCompOs._(this.value);
}

class CBJCompModel extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  factory CBJCompModel(String input) {
    assert(input != null);
    return CBJCompModel._(
      validateCBJCompNotEmpty(input),
    );
  }

  const CBJCompModel._(this.value);
}

class CBJCompType extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  factory CBJCompType(String input) {
    assert(input != null);
    return CBJCompType._(
      validateCBJCompNotEmpty(input)
          .flatMap((a) => validateCBJCompTypeExist(input)),
    );
  }

  const CBJCompType._(this.value);
}

class CBJCompUuid extends CBJCompValueObjectAbstract<String> {
  @override
  final Either<CBJCompFailure<String>, String> value;

  factory CBJCompUuid(String input) {
    assert(input != null);
    return CBJCompUuid._(
      validateCBJCompNotEmpty(input),
    );
  }

  const CBJCompUuid._(this.value);
}
