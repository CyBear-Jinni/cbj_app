// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cybear_jinni/domain/add_user/add_user_to_home_value_objects.dart';
// import 'package:cybear_jinni/domain/generic_devices/device_entity.dart';
// import 'package:cybear_jinni/domain/generic_devices/value_objects.dart';
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
//     required AddUserEmail email,
//     required AddUserPermission permission,
//     required String name,
//     required String lastName,
//   }) = _AddUserDtos;
//
//   factory AddUserDtos.fromDomain(GenericLightDE deviceEntity) {
//     return AddUserDtos(
//       id: deviceEntity.id.getOrCrash(),
//       cbjEntityName: deviceEntity.cbjEntityName.getOrCrash(),
//
//     );
//   }
//
//   GenericLightDE toDomain() {
//     return GenericLightDE(
//       id: DeviceUniqueId.fromUniqueString(id),
//       cbjEntityName: CbjEntityName(cbjEntityName),
//       roomId: DeviceUniqueId.fromUniqueString(roomId),
//       state: EntityState(state),
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
