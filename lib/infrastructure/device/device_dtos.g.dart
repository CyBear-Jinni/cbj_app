// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceDtos _$_$_DeviceDtosFromJson(Map<String, dynamic> json) {
  return _$_DeviceDtos(
    defaultName: json['defaultName'] as String?,
    roomId: json['roomId'] as String?,
    state: json['state'] as String?,
    stateMassage: json['stateMassage'] as String?,
    senderDeviceOs: json['senderDeviceOs'] as String?,
    senderDeviceModel: json['senderDeviceModel'] as String?,
    senderId: json['senderId'] as String?,
    action: json['action'] as String?,
    type: json['type'] as String?,
    compUuid: json['compUuid'] as String?,
  );
}

Map<String, dynamic> _$_$_DeviceDtosToJson(_$_DeviceDtos instance) =>
    <String, dynamic>{
      'defaultName': instance.defaultName,
      'roomId': instance.roomId,
      'state': instance.state,
      'stateMassage': instance.stateMassage,
      'senderDeviceOs': instance.senderDeviceOs,
      'senderDeviceModel': instance.senderDeviceModel,
      'senderId': instance.senderId,
      'action': instance.action,
      'type': instance.type,
      'compUuid': instance.compUuid,
    };
