import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:cybear_jinni/infrastructure/room/room_entity_dtos.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_entity.freezed.dart';

@unfreezed
abstract class RoomEntity implements _$RoomEntity {
  factory RoomEntity({
    required RoomUniqueId uniqueId,
    required RoomDefaultName cbjEntityName,
    required RoomBackground background,
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
        cbjEntityName: RoomDefaultName(''),
        background: RoomBackground(
          'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
        ),
        roomDevicesId: RoomDevicesId(const []),
        roomScenesId: RoomScenesId(const []),
        roomRoutinesId: RoomRoutinesId(const []),
        roomBindingsId: RoomBindingsId(const []),
        roomMostUsedBy: RoomMostUsedBy(const []),
        roomPermissions: RoomPermissions(const []),
        roomTypes: RoomTypes(const []),
      );

  /// Will add new device id to the devices in the room list
  void addDeviceId(String newDeviceId) {
    final List<String> tempList = [];
    tempList.addAll(roomDevicesId.getOrCrash());
    tempList.add(newDeviceId);
    try {
      roomDevicesId = RoomDevicesId(tempList);
    } catch (e) {
      logger.e('addDeviceId will not work if list got created with const');
    }
  }

  /// Will add new scene id to the scenes in the room list
  void addSceneId(String newSceneId) {
    final List<String> tempList = [];
    tempList.addAll(roomScenesId.getOrCrash());
    tempList.add(newSceneId);
    try {
      roomScenesId = RoomScenesId(tempList);
    } catch (e) {
      logger.e('addSceneId will not work if list got created with const');
    }
  }

  /// Will add new routine id to the scenes in the room list
  void addRoutineId(String newRoutineId) {
    final List<String> tempList = [];
    tempList.addAll(roomRoutinesId.getOrCrash());
    tempList.add(newRoutineId);
    try {
      roomRoutinesId = RoomRoutinesId(tempList);
    } catch (e) {
      logger.e('addRoutineId will not work if list got created with const');
    }
  }

  /// Will add new Binding id to the scenes in the room list
  void addBindingId(String newSceneId) {
    try {
      roomBindingsId.getOrCrash().add(newSceneId);
    } catch (e) {
      logger.e('addBindingId will not work if list got created with const');
    }
  }

  /// Return new RoomDevicesId object without id if it exist in roomDevicesId
  RoomDevicesId deleteIdIfExist(String id) {
    final List<String> tempList = List.from(roomDevicesId.getOrCrash());
    tempList.removeWhere((element) => element == id);

    return RoomDevicesId(tempList);
  }

  Option<RoomFailure<dynamic>> get failureOption {
    return cbjEntityName.value.fold((f) => some(f), (_) => none());
  }

  RoomEntityDtos toInfrastructure() {
    return RoomEntityDtos(
      uniqueId: uniqueId.getOrCrash(),
      cbjEntityName: cbjEntityName.getOrCrash(),
      background: background.getOrCrash(),
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
