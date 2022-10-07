import 'package:cybear_jinni/domain/room/room_errors.dart';
import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:cybear_jinni/domain/room/room_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObjectRooms<T> {
  const ValueObjectRooms();

  Either<RoomFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [AuthValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw RoomUnexpectedValueError(f), id);
  }

  Either<RoomFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  @nonVirtual
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObjectRooms<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class RoomUniqueId extends ValueObjectRooms<String> {
  factory RoomUniqueId() {
    return RoomUniqueId._(right(const Uuid().v1()));
  }

  factory RoomUniqueId.fromUniqueString(String uniqueId) {
    return RoomUniqueId._(right(uniqueId));
  }

  factory RoomUniqueId.discoveredRoomId() {
    return RoomUniqueId._(right('00000000-0000-0000-0000-000000000000'));
  }

  const RoomUniqueId._(this.value);

  @override
  final Either<RoomFailure<String>, String> value;
}

class RoomDefaultName extends ValueObjectRooms<String> {
  factory RoomDefaultName(String input) {
    return RoomDefaultName._(
      validateRoomNotEmpty(input)
          .flatMap((a) => validateRoomMaxNameLength(input, maxLength)),
    );
  }

  factory RoomDefaultName.discoveredRoomName() {
    return RoomDefaultName._(right('Discovered'));
  }

  const RoomDefaultName._(this.value);

  @override
  final Either<RoomFailure<String>, String> value;

  static const maxLength = 1000;
}

class RoomTypes extends ValueObjectRooms<List<String>> {
  factory RoomTypes(List<String> input) {
    return RoomTypes._(validateRoomTypesExist(input));
  }

  const RoomTypes._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomDevicesId extends ValueObjectRooms<List<String>> {
  factory RoomDevicesId(List<String> input) {
    return RoomDevicesId._(validateRoomTypsValid(input));
  }

  const RoomDevicesId._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomScenesId extends ValueObjectRooms<List<String>> {
  factory RoomScenesId(List<String> input) {
    return RoomScenesId._(validateRoomTypsValid(input));
  }

  const RoomScenesId._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomRoutinesId extends ValueObjectRooms<List<String>> {
  factory RoomRoutinesId(List<String> input) {
    return RoomRoutinesId._(validateRoomTypsValid(input));
  }

  const RoomRoutinesId._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomBindingsId extends ValueObjectRooms<List<String>> {
  factory RoomBindingsId(List<String> input) {
    return RoomBindingsId._(validateRoomTypsValid(input));
  }

  const RoomBindingsId._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomMostUsedBy extends ValueObjectRooms<List<String>> {
  factory RoomMostUsedBy(List<String> input) {
    return RoomMostUsedBy._(validateUserIdsValid(input));
  }

  const RoomMostUsedBy._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}

class RoomPermissions extends ValueObjectRooms<List<String>> {
  factory RoomPermissions(List<String> input) {
    return RoomPermissions._(validateUserIdsValid(input));
  }

  const RoomPermissions._(this.value);

  @override
  final Either<RoomFailure<List<String>>, List<String>> value;
}
