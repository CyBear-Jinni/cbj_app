// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_home_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateHomeDtos _$_$_CreateHomeDtosFromJson(Map<String, dynamic> json) {
  return _$_CreateHomeDtos(
    homeDevicesUserId: json['homeDevicesUserId'] as String,
    homeDevicesUserEmail: json['homeDevicesUserEmail'] as String,
    homeDevicesUserPassword: json['homeDevicesUserPassword'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_CreateHomeDtosToJson(_$_CreateHomeDtos instance) =>
    <String, dynamic>{
      'homeDevicesUserId': instance.homeDevicesUserId,
      'homeDevicesUserEmail': instance.homeDevicesUserEmail,
      'homeDevicesUserPassword': instance.homeDevicesUserPassword,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
