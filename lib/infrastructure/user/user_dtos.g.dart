// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDtos _$_$_UserDtosFromJson(Map<String, dynamic> json) {
  return _$_UserDtos(
    email: json['email'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
  );
}

Map<String, dynamic> _$_$_UserDtosToJson(_$_UserDtos instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
