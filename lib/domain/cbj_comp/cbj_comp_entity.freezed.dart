// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cbj_comp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CBJCompEntityTearOff {
  const _$CBJCompEntityTearOff();

// ignore: unused_element
  _CBJCompEntity call(
      {@required CBJCompUniqueId id,
      @required CBJCompRoomId roomId,
      CBJCompDevices cBJCompDevices,
      CBJCompDefaultName name,
      CBJCompMacAddr macAddr,
      CBJCompOs compOs,
      CBJCompModel compModel,
      CBJCompType compType}) {
    return _CBJCompEntity(
      id: id,
      roomId: roomId,
      cBJCompDevices: cBJCompDevices,
      name: name,
      macAddr: macAddr,
      compOs: compOs,
      compModel: compModel,
      compType: compType,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CBJCompEntity = _$CBJCompEntityTearOff();

/// @nodoc
mixin _$CBJCompEntity {
  CBJCompUniqueId get id;
  CBJCompRoomId get roomId;
  CBJCompDevices get cBJCompDevices;
  CBJCompDefaultName get name;
  CBJCompMacAddr get macAddr;
  CBJCompOs get compOs;
  CBJCompModel get compModel;
  CBJCompType get compType;

  @JsonKey(ignore: true)
  $CBJCompEntityCopyWith<CBJCompEntity> get copyWith;
}

/// @nodoc
abstract class $CBJCompEntityCopyWith<$Res> {
  factory $CBJCompEntityCopyWith(
          CBJCompEntity value, $Res Function(CBJCompEntity) then) =
      _$CBJCompEntityCopyWithImpl<$Res>;
  $Res call(
      {CBJCompUniqueId id,
      CBJCompRoomId roomId,
      CBJCompDevices cBJCompDevices,
      CBJCompDefaultName name,
      CBJCompMacAddr macAddr,
      CBJCompOs compOs,
      CBJCompModel compModel,
      CBJCompType compType});
}

/// @nodoc
class _$CBJCompEntityCopyWithImpl<$Res>
    implements $CBJCompEntityCopyWith<$Res> {
  _$CBJCompEntityCopyWithImpl(this._value, this._then);

  final CBJCompEntity _value;
  // ignore: unused_field
  final $Res Function(CBJCompEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object roomId = freezed,
    Object cBJCompDevices = freezed,
    Object name = freezed,
    Object macAddr = freezed,
    Object compOs = freezed,
    Object compModel = freezed,
    Object compType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as CBJCompUniqueId,
      roomId: roomId == freezed ? _value.roomId : roomId as CBJCompRoomId,
      cBJCompDevices: cBJCompDevices == freezed
          ? _value.cBJCompDevices
          : cBJCompDevices as CBJCompDevices,
      name: name == freezed ? _value.name : name as CBJCompDefaultName,
      macAddr: macAddr == freezed ? _value.macAddr : macAddr as CBJCompMacAddr,
      compOs: compOs == freezed ? _value.compOs : compOs as CBJCompOs,
      compModel:
          compModel == freezed ? _value.compModel : compModel as CBJCompModel,
      compType: compType == freezed ? _value.compType : compType as CBJCompType,
    ));
  }
}

/// @nodoc
abstract class _$CBJCompEntityCopyWith<$Res>
    implements $CBJCompEntityCopyWith<$Res> {
  factory _$CBJCompEntityCopyWith(
          _CBJCompEntity value, $Res Function(_CBJCompEntity) then) =
      __$CBJCompEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {CBJCompUniqueId id,
      CBJCompRoomId roomId,
      CBJCompDevices cBJCompDevices,
      CBJCompDefaultName name,
      CBJCompMacAddr macAddr,
      CBJCompOs compOs,
      CBJCompModel compModel,
      CBJCompType compType});
}

/// @nodoc
class __$CBJCompEntityCopyWithImpl<$Res>
    extends _$CBJCompEntityCopyWithImpl<$Res>
    implements _$CBJCompEntityCopyWith<$Res> {
  __$CBJCompEntityCopyWithImpl(
      _CBJCompEntity _value, $Res Function(_CBJCompEntity) _then)
      : super(_value, (v) => _then(v as _CBJCompEntity));

  @override
  _CBJCompEntity get _value => super._value as _CBJCompEntity;

  @override
  $Res call({
    Object id = freezed,
    Object roomId = freezed,
    Object cBJCompDevices = freezed,
    Object name = freezed,
    Object macAddr = freezed,
    Object compOs = freezed,
    Object compModel = freezed,
    Object compType = freezed,
  }) {
    return _then(_CBJCompEntity(
      id: id == freezed ? _value.id : id as CBJCompUniqueId,
      roomId: roomId == freezed ? _value.roomId : roomId as CBJCompRoomId,
      cBJCompDevices: cBJCompDevices == freezed
          ? _value.cBJCompDevices
          : cBJCompDevices as CBJCompDevices,
      name: name == freezed ? _value.name : name as CBJCompDefaultName,
      macAddr: macAddr == freezed ? _value.macAddr : macAddr as CBJCompMacAddr,
      compOs: compOs == freezed ? _value.compOs : compOs as CBJCompOs,
      compModel:
          compModel == freezed ? _value.compModel : compModel as CBJCompModel,
      compType: compType == freezed ? _value.compType : compType as CBJCompType,
    ));
  }
}

/// @nodoc
class _$_CBJCompEntity extends _CBJCompEntity {
  const _$_CBJCompEntity(
      {@required this.id,
      @required this.roomId,
      this.cBJCompDevices,
      this.name,
      this.macAddr,
      this.compOs,
      this.compModel,
      this.compType})
      : assert(id != null),
        assert(roomId != null),
        super._();

  @override
  final CBJCompUniqueId id;
  @override
  final CBJCompRoomId roomId;
  @override
  final CBJCompDevices cBJCompDevices;
  @override
  final CBJCompDefaultName name;
  @override
  final CBJCompMacAddr macAddr;
  @override
  final CBJCompOs compOs;
  @override
  final CBJCompModel compModel;
  @override
  final CBJCompType compType;

  @override
  String toString() {
    return 'CBJCompEntity(id: $id, roomId: $roomId, cBJCompDevices: $cBJCompDevices, name: $name, macAddr: $macAddr, compOs: $compOs, compModel: $compModel, compType: $compType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CBJCompEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.cBJCompDevices, cBJCompDevices) ||
                const DeepCollectionEquality()
                    .equals(other.cBJCompDevices, cBJCompDevices)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.macAddr, macAddr) ||
                const DeepCollectionEquality()
                    .equals(other.macAddr, macAddr)) &&
            (identical(other.compOs, compOs) ||
                const DeepCollectionEquality().equals(other.compOs, compOs)) &&
            (identical(other.compModel, compModel) ||
                const DeepCollectionEquality()
                    .equals(other.compModel, compModel)) &&
            (identical(other.compType, compType) ||
                const DeepCollectionEquality()
                    .equals(other.compType, compType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(cBJCompDevices) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(macAddr) ^
      const DeepCollectionEquality().hash(compOs) ^
      const DeepCollectionEquality().hash(compModel) ^
      const DeepCollectionEquality().hash(compType);

  @JsonKey(ignore: true)
  @override
  _$CBJCompEntityCopyWith<_CBJCompEntity> get copyWith =>
      __$CBJCompEntityCopyWithImpl<_CBJCompEntity>(this, _$identity);
}

abstract class _CBJCompEntity extends CBJCompEntity {
  const _CBJCompEntity._() : super._();
  const factory _CBJCompEntity(
      {@required CBJCompUniqueId id,
      @required CBJCompRoomId roomId,
      CBJCompDevices cBJCompDevices,
      CBJCompDefaultName name,
      CBJCompMacAddr macAddr,
      CBJCompOs compOs,
      CBJCompModel compModel,
      CBJCompType compType}) = _$_CBJCompEntity;

  @override
  CBJCompUniqueId get id;
  @override
  CBJCompRoomId get roomId;
  @override
  CBJCompDevices get cBJCompDevices;
  @override
  CBJCompDefaultName get name;
  @override
  CBJCompMacAddr get macAddr;
  @override
  CBJCompOs get compOs;
  @override
  CBJCompModel get compModel;
  @override
  CBJCompType get compType;
  @override
  @JsonKey(ignore: true)
  _$CBJCompEntityCopyWith<_CBJCompEntity> get copyWith;
}
