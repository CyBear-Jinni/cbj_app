import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_entity_dtos.freezed.dart';
part 'room_entity_dtos.g.dart';

@freezed
abstract class RoomEntityDtos implements _$RoomEntityDtos {
  factory RoomEntityDtos({
    required String uniqueId,
    required String defaultName,
    required String background,
    required List<String> roomTypes,
    required List<String> roomDevicesId,
    required List<String> roomScenesId,
    required List<String> roomRoutinesId,
    required List<String> roomBindingsId,

    /// Who is using this room
    required List<String> roomMostUsedBy,

    /// Room permissions by users id
    required List<String> roomPermissions,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _RoomEntityDtos;

  RoomEntityDtos._();

  factory RoomEntityDtos.fromDomain(RoomEntity roomEntityDE) {
    return RoomEntityDtos(
      uniqueId: roomEntityDE.uniqueId.getOrCrash(),
      defaultName: roomEntityDE.defaultName.getOrCrash(),
      background: roomEntityDE.background.getOrCrash(),
      roomTypes: roomEntityDE.roomTypes.getOrCrash(),
      roomDevicesId: roomEntityDE.roomDevicesId.getOrCrash(),
      roomScenesId: roomEntityDE.roomScenesId.getOrCrash(),
      roomRoutinesId: roomEntityDE.roomRoutinesId.getOrCrash(),
      roomBindingsId: roomEntityDE.roomBindingsId.getOrCrash(),
      roomMostUsedBy: roomEntityDE.roomMostUsedBy.getOrCrash(),
      roomPermissions: roomEntityDE.roomPermissions.getOrCrash(),
    );
  }

  factory RoomEntityDtos.fromJson(Map<String, dynamic> json) =>
      _$RoomEntityDtosFromJson(json);

  RoomEntity toDomain() {
    return RoomEntity(
      uniqueId: RoomUniqueId.fromUniqueString(uniqueId),
      defaultName: RoomDefaultName(defaultName),
      background: RoomBackground(background),
      roomTypes: RoomTypes(roomTypes),
      roomDevicesId: RoomDevicesId(roomDevicesId),
      roomScenesId: RoomScenesId(roomScenesId),
      roomRoutinesId: RoomRoutinesId(roomRoutinesId),
      roomBindingsId: RoomBindingsId(roomBindingsId),
      roomMostUsedBy: RoomMostUsedBy(roomMostUsedBy),
      roomPermissions: RoomPermissions(roomPermissions),
    );
  }

  final String deviceDtoClassInstance = (RoomEntityDtos).toString();
}
