// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cybear_jinni/domain/add_user/add_user_value_objects.dart';
// import 'package:cybear_jinni/domain/devices/device_entity.dart';
// import 'package:cybear_jinni/domain/devices/value_objects.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'add_user_dtos.freezed.dart';
// part 'add_user_dtos.g.dart';
//
// @freezed
// abstract class AddUserDtos implements _$AddUserDtos {
//   const AddUserDtos._();
//
//   const factory AddUserDtos({
//     @JsonKey(ignore: true) String id,
//     @required AddUserEmail email,
//     @required AddUserPermission permission,
//     @required String name,
//     @required String lastName,
//   }) = _AddUserDtos;
//
//   factory AddUserDtos.fromDomain(DeviceEntity deviceEntity) {
//     return AddUserDtos(
//       id: deviceEntity.id.getOrCrash(),
//       defaultName: deviceEntity.defaultName.getOrCrash(),
//
//     );
//   }
//
//   DeviceEntity toDomain() {
//     return DeviceEntity(
//       id: DeviceUniqueId.fromUniqueString(id),
//       defaultName: DeviceDefaultName(defaultName),
//       roomId: DeviceUniqueId.fromUniqueString(roomId),
//       state: DeviceState(state),
//       stateMassage: DeviceStateMassage(stateMassage),
//       senderDeviceOs: DeviceSenderDeviceOs(senderDeviceOs),
//       senderDeviceModel: DeviceSenderDeviceModel(senderDeviceModel),
//       senderId: DeviceSenderId.fromUniqueString(senderId),
//       action: DeviceAction(action),
//       type: DeviceType(type),
//     );
//   }
//
//   factory AddUserDtos.fromJson(Map<String, dynamic> json) =>
//       _$AddUserDtosFromJson(json);
//
//   factory AddUserDtos.fromFirestore(DocumentSnapshot doc) {
//     return AddUserDtos.fromJson(doc.data()).copyWith(id: doc.id);
//   }
// }
//
// class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
//   const ServerTimestampConverter();
//
//   @override
//   FieldValue fromJson(Object json) {
//     return FieldValue.serverTimestamp();
//   }
//
//   @override
//   Object toJson(FieldValue fieldValue) => fieldValue;
// }
