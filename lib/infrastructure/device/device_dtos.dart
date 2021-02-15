import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_dtos.freezed.dart';
part 'device_dtos.g.dart';

@freezed
abstract class DeviceDtos implements _$DeviceDtos {
  const DeviceDtos._();

  const factory DeviceDtos({
    @JsonKey(ignore: true) String id,
    @required String defaultName,
    @required String roomId,
    @required String state,
    @required String type,
  }) = _DeviceDtos;

  factory DeviceDtos.fromDomain(DeviceEntity deviceEntity) {
    return DeviceDtos(
      id: deviceEntity.id.getOrCrash(),
      defaultName: deviceEntity.defaultName.getOrCrash(),
      roomId: deviceEntity.roomId.getOrCrash(),
      state: deviceEntity.state.getOrCrash(),
      type: deviceEntity.type.getOrCrash(),
    );
  }

  DeviceEntity toDomain() {
    return DeviceEntity(
      id: DeviceUniqueId.fromUniqueString(id),
      defaultName: DeviceDefaultName(defaultName),
      roomId: DeviceUniqueId.fromUniqueString(roomId),
      state: DeviceState(state),
      type: DeviceType(type),
    );
  }

  factory DeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtosFromJson(json);

  factory DeviceDtos.fromFirestore(DocumentSnapshot doc) {
    return DeviceDtos.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
