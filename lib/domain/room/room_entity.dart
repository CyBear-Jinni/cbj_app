import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:cybear_jinni/infrastructure/room/room_entity_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_entity.freezed.dart';

@freezed
abstract class RoomEntity implements _$RoomEntity {
  const factory RoomEntity({
    required RoomUniqueId uniqueId,
    required RoomDefaultName defaultName,
    required RoomTypes roomTypes,
    required RoomDevicesId roomDevicesId,
    required RoomScenesId roomScenesId,
    required RoomRoutinesId roomRoutinesId,
    required RoomBindingsId roomBindingsId,

    /// Who is using this room
    required RoomMostUsedBy roomMostUsedBy,

    /// Room permissions by users id
    required RoomPermissions roomPermissions,
  }) = _RoomEntity;

  const RoomEntity._();

  factory RoomEntity.empty() => RoomEntity(
        uniqueId: RoomUniqueId(),
        defaultName: RoomDefaultName(''),
        // Do not add const
        roomDevicesId: RoomDevicesId(const []),
        // Do not add const
        roomScenesId: RoomScenesId(const []),
        // Do not add const
        roomRoutinesId: RoomRoutinesId(const []),
        // Do not add const
        roomBindingsId: RoomBindingsId(const []),
        // Do not add const
        roomMostUsedBy: RoomMostUsedBy(const []),
        // Do not add const
        roomPermissions: RoomPermissions(const []),
        // Do not add const
        roomTypes: RoomTypes(const []), // Do not add const
      );

  /// Will add new device id to the devices in the room list
  void addDeviceId(String newDeviceId) {
    /// Will not work if list got created with const
    try {
      roomDevicesId.getOrCrash().add(newDeviceId);
    } catch (e) {
      logger.e('Will not work if list got created with const');
    }
  }

  /// Will add new scene id to the scenes in the room list
  void addSceneId(String newSceneId) {
    /// Will not work if list got created with const
    try {
      roomScenesId.getOrCrash().add(newSceneId);
    } catch (e) {
      logger.e('Will not work if list got created with const');
    }
  }

  /// Will add new routine id to the scenes in the room list
  void addRoutineId(String newSceneId) {
    /// Will not work if list got created with const
    try {
      roomRoutinesId.getOrCrash().add(newSceneId);
    } catch (e) {
      logger.e('Will not work if list got created with const');
    }
  }

  /// Will add new Binding id to the scenes in the room list
  void addBindingId(String newSceneId) {
    /// Will not work if list got created with const
    try {
      roomBindingsId.getOrCrash().add(newSceneId);
    } catch (e) {
      logger.e('Will not work if list got created with const');
    }
  }

  Option<RoomFailure<dynamic>> get failureOption {
    return defaultName.value.fold((f) => some(f), (_) => none());
  }

  RoomEntityDtos toInfrastructure() {
    return RoomEntityDtos(
      uniqueId: uniqueId.getOrCrash(),
      defaultName: defaultName.getOrCrash(),
      roomTypes: roomTypes.getOrCrash(),
      roomDevicesId: roomDevicesId.getOrCrash(),
      roomScenesId: roomScenesId.getOrCrash(),
      roomRoutinesId: roomRoutinesId.getOrCrash(),
      roomBindingsId: roomBindingsId.getOrCrash(),
      roomMostUsedBy: roomMostUsedBy.getOrCrash(),
      roomPermissions: roomPermissions.getOrCrash(),
    );
  }
}
