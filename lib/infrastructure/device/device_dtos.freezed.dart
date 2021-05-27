// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceDtos _$DeviceDtosFromJson(Map<String, dynamic> json) {
  return _DeviceDtos.fromJson(json);
}

/// @nodoc
class _$DeviceDtosTearOff {
  const _$DeviceDtosTearOff();

  _DeviceDtos call(
      {@JsonKey(ignore: true) String? id,
      required String? defaultName,
      required String? roomId,
      required String? state,
      String? stateMassage,
      required String? senderDeviceOs,
      required String? senderDeviceModel,
      required String? senderId,
      required String? action,
      required String? type,
      required String? compUuid}) {
    return _DeviceDtos(
      id: id,
      defaultName: defaultName,
      roomId: roomId,
      state: state,
      stateMassage: stateMassage,
      senderDeviceOs: senderDeviceOs,
      senderDeviceModel: senderDeviceModel,
      senderId: senderId,
      action: action,
      type: type,
      compUuid: compUuid,
    );
  }

  DeviceDtos fromJson(Map<String, Object> json) {
    return DeviceDtos.fromJson(json);
  }
}

/// @nodoc
const $DeviceDtos = _$DeviceDtosTearOff();

/// @nodoc
mixin _$DeviceDtos {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get defaultName => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get stateMassage => throw _privateConstructorUsedError;
  String? get senderDeviceOs => throw _privateConstructorUsedError;
  String? get senderDeviceModel => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get compUuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDtosCopyWith<DeviceDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDtosCopyWith<$Res> {
  factory $DeviceDtosCopyWith(
          DeviceDtos value, $Res Function(DeviceDtos) then) =
      _$DeviceDtosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? defaultName,
      String? roomId,
      String? state,
      String? stateMassage,
      String? senderDeviceOs,
      String? senderDeviceModel,
      String? senderId,
      String? action,
      String? type,
      String? compUuid});
}

/// @nodoc
class _$DeviceDtosCopyWithImpl<$Res> implements $DeviceDtosCopyWith<$Res> {
  _$DeviceDtosCopyWithImpl(this._value, this._then);

  final DeviceDtos _value;
  // ignore: unused_field
  final $Res Function(DeviceDtos) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? defaultName = freezed,
    Object? roomId = freezed,
    Object? state = freezed,
    Object? stateMassage = freezed,
    Object? senderDeviceOs = freezed,
    Object? senderDeviceModel = freezed,
    Object? senderId = freezed,
    Object? action = freezed,
    Object? type = freezed,
    Object? compUuid = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateMassage: stateMassage == freezed
          ? _value.stateMassage
          : stateMassage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderDeviceOs: senderDeviceOs == freezed
          ? _value.senderDeviceOs
          : senderDeviceOs // ignore: cast_nullable_to_non_nullable
              as String?,
      senderDeviceModel: senderDeviceModel == freezed
          ? _value.senderDeviceModel
          : senderDeviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      compUuid: compUuid == freezed
          ? _value.compUuid
          : compUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DeviceDtosCopyWith<$Res> implements $DeviceDtosCopyWith<$Res> {
  factory _$DeviceDtosCopyWith(
          _DeviceDtos value, $Res Function(_DeviceDtos) then) =
      __$DeviceDtosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? defaultName,
      String? roomId,
      String? state,
      String? stateMassage,
      String? senderDeviceOs,
      String? senderDeviceModel,
      String? senderId,
      String? action,
      String? type,
      String? compUuid});
}

/// @nodoc
class __$DeviceDtosCopyWithImpl<$Res> extends _$DeviceDtosCopyWithImpl<$Res>
    implements _$DeviceDtosCopyWith<$Res> {
  __$DeviceDtosCopyWithImpl(
      _DeviceDtos _value, $Res Function(_DeviceDtos) _then)
      : super(_value, (v) => _then(v as _DeviceDtos));

  @override
  _DeviceDtos get _value => super._value as _DeviceDtos;

  @override
  $Res call({
    Object? id = freezed,
    Object? defaultName = freezed,
    Object? roomId = freezed,
    Object? state = freezed,
    Object? stateMassage = freezed,
    Object? senderDeviceOs = freezed,
    Object? senderDeviceModel = freezed,
    Object? senderId = freezed,
    Object? action = freezed,
    Object? type = freezed,
    Object? compUuid = freezed,
  }) {
    return _then(_DeviceDtos(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateMassage: stateMassage == freezed
          ? _value.stateMassage
          : stateMassage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderDeviceOs: senderDeviceOs == freezed
          ? _value.senderDeviceOs
          : senderDeviceOs // ignore: cast_nullable_to_non_nullable
              as String?,
      senderDeviceModel: senderDeviceModel == freezed
          ? _value.senderDeviceModel
          : senderDeviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      compUuid: compUuid == freezed
          ? _value.compUuid
          : compUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceDtos extends _DeviceDtos {
  const _$_DeviceDtos(
      {@JsonKey(ignore: true) this.id,
      required this.defaultName,
      required this.roomId,
      required this.state,
      this.stateMassage,
      required this.senderDeviceOs,
      required this.senderDeviceModel,
      required this.senderId,
      required this.action,
      required this.type,
      required this.compUuid})
      : super._();

  factory _$_DeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? defaultName;
  @override
  final String? roomId;
  @override
  final String? state;
  @override
  final String? stateMassage;
  @override
  final String? senderDeviceOs;
  @override
  final String? senderDeviceModel;
  @override
  final String? senderId;
  @override
  final String? action;
  @override
  final String? type;
  @override
  final String? compUuid;

  @override
  String toString() {
    return 'DeviceDtos(id: $id, defaultName: $defaultName, roomId: $roomId, state: $state, stateMassage: $stateMassage, senderDeviceOs: $senderDeviceOs, senderDeviceModel: $senderDeviceModel, senderId: $senderId, action: $action, type: $type, compUuid: $compUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.defaultName, defaultName) ||
                const DeepCollectionEquality()
                    .equals(other.defaultName, defaultName)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateMassage, stateMassage) ||
                const DeepCollectionEquality()
                    .equals(other.stateMassage, stateMassage)) &&
            (identical(other.senderDeviceOs, senderDeviceOs) ||
                const DeepCollectionEquality()
                    .equals(other.senderDeviceOs, senderDeviceOs)) &&
            (identical(other.senderDeviceModel, senderDeviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.senderDeviceModel, senderDeviceModel)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.compUuid, compUuid) ||
                const DeepCollectionEquality()
                    .equals(other.compUuid, compUuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(defaultName) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateMassage) ^
      const DeepCollectionEquality().hash(senderDeviceOs) ^
      const DeepCollectionEquality().hash(senderDeviceModel) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(compUuid);

  @JsonKey(ignore: true)
  @override
  _$DeviceDtosCopyWith<_DeviceDtos> get copyWith =>
      __$DeviceDtosCopyWithImpl<_DeviceDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceDtosToJson(this);
  }
}

abstract class _DeviceDtos extends DeviceDtos {
  const factory _DeviceDtos(
      {@JsonKey(ignore: true) String? id,
      required String? defaultName,
      required String? roomId,
      required String? state,
      String? stateMassage,
      required String? senderDeviceOs,
      required String? senderDeviceModel,
      required String? senderId,
      required String? action,
      required String? type,
      required String? compUuid}) = _$_DeviceDtos;
  const _DeviceDtos._() : super._();

  factory _DeviceDtos.fromJson(Map<String, dynamic> json) =
      _$_DeviceDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get defaultName => throw _privateConstructorUsedError;
  @override
  String? get roomId => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get stateMassage => throw _privateConstructorUsedError;
  @override
  String? get senderDeviceOs => throw _privateConstructorUsedError;
  @override
  String? get senderDeviceModel => throw _privateConstructorUsedError;
  @override
  String? get senderId => throw _privateConstructorUsedError;
  @override
  String? get action => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get compUuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceDtosCopyWith<_DeviceDtos> get copyWith =>
      throw _privateConstructorUsedError;
}
