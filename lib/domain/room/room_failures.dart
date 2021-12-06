import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_failures.freezed.dart';

@freezed
class RoomFailure<T> {
  const factory RoomFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory RoomFailure.actionExcecuter({
    required T failedValue,
  }) = _ActionExcecuter;

  const factory RoomFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;

  const factory RoomFailure.unexpected() = _Unexpected;

  const factory RoomFailure.insufficientPermission() = _InsufficientPermission;

  const factory RoomFailure.unableToUpdate() = _UnableToUpdate;

  const factory RoomFailure.powerConsumptionIsNotNumber() =
      _PowerConsumptionIsNotNumber;

  const factory RoomFailure.roomsActionDoesNotExist() =
      _RoomsActionDoesNotExist;

  const factory RoomFailure.roomsTypeDoesNotExist() = _RoomsTypeDoesNotExist;
}
