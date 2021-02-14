// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceEntityTearOff {
  const _$DeviceEntityTearOff();

// ignore: unused_element
  _DeviceEnitie call(
      {@required DeviceUniqueId id,
      @required DeviceDefaultName defaultName,
      @required DeviceUniqueId roomId,
      @required DeviceState state,
      @required DeviceType type}) {
    return _DeviceEnitie(
      id: id,
      defaultName: defaultName,
      roomId: roomId,
      state: state,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceEntity = _$DeviceEntityTearOff();

/// @nodoc
mixin _$DeviceEntity {
  DeviceUniqueId get id;
  DeviceDefaultName get defaultName;
  DeviceUniqueId get roomId;
  DeviceState get state;
  DeviceType get type;

  @JsonKey(ignore: true)
  $DeviceEntityCopyWith<DeviceEntity> get copyWith;
}

/// @nodoc
abstract class $DeviceEntityCopyWith<$Res> {
  factory $DeviceEntityCopyWith(
          DeviceEntity value, $Res Function(DeviceEntity) then) =
      _$DeviceEntityCopyWithImpl<$Res>;
  $Res call(
      {DeviceUniqueId id,
      DeviceDefaultName defaultName,
      DeviceUniqueId roomId,
      DeviceState state,
      DeviceType type});
}

/// @nodoc
class _$DeviceEntityCopyWithImpl<$Res> implements $DeviceEntityCopyWith<$Res> {
  _$DeviceEntityCopyWithImpl(this._value, this._then);

  final DeviceEntity _value;
  // ignore: unused_field
  final $Res Function(DeviceEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as DeviceUniqueId,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName as DeviceDefaultName,
      roomId: roomId == freezed ? _value.roomId : roomId as DeviceUniqueId,
      state: state == freezed ? _value.state : state as DeviceState,
      type: type == freezed ? _value.type : type as DeviceType,
    ));
  }
}

/// @nodoc
abstract class _$DeviceEnitieCopyWith<$Res>
    implements $DeviceEntityCopyWith<$Res> {
  factory _$DeviceEnitieCopyWith(
          _DeviceEnitie value, $Res Function(_DeviceEnitie) then) =
      __$DeviceEnitieCopyWithImpl<$Res>;
  @override
  $Res call(
      {DeviceUniqueId id,
      DeviceDefaultName defaultName,
      DeviceUniqueId roomId,
      DeviceState state,
      DeviceType type});
}

/// @nodoc
class __$DeviceEnitieCopyWithImpl<$Res> extends _$DeviceEntityCopyWithImpl<$Res>
    implements _$DeviceEnitieCopyWith<$Res> {
  __$DeviceEnitieCopyWithImpl(
      _DeviceEnitie _value, $Res Function(_DeviceEnitie) _then)
      : super(_value, (v) => _then(v as _DeviceEnitie));

  @override
  _DeviceEnitie get _value => super._value as _DeviceEnitie;

  @override
  $Res call({
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object type = freezed,
  }) {
    return _then(_DeviceEnitie(
      id: id == freezed ? _value.id : id as DeviceUniqueId,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName as DeviceDefaultName,
      roomId: roomId == freezed ? _value.roomId : roomId as DeviceUniqueId,
      state: state == freezed ? _value.state : state as DeviceState,
      type: type == freezed ? _value.type : type as DeviceType,
    ));
  }
}

/// @nodoc
class _$_DeviceEnitie extends _DeviceEnitie {
  const _$_DeviceEnitie(
      {@required this.id,
      @required this.defaultName,
      @required this.roomId,
      @required this.state,
      @required this.type})
      : assert(id != null),
        assert(defaultName != null),
        assert(roomId != null),
        assert(state != null),
        assert(type != null),
        super._();

  @override
  final DeviceUniqueId id;
  @override
  final DeviceDefaultName defaultName;
  @override
  final DeviceUniqueId roomId;
  @override
  final DeviceState state;
  @override
  final DeviceType type;

  @override
  String toString() {
    return 'DeviceEntity(id: $id, defaultName: $defaultName, roomId: $roomId, state: $state, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceEnitie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.defaultName, defaultName) ||
                const DeepCollectionEquality()
                    .equals(other.defaultName, defaultName)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(defaultName) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$DeviceEnitieCopyWith<_DeviceEnitie> get copyWith =>
      __$DeviceEnitieCopyWithImpl<_DeviceEnitie>(this, _$identity);
}

abstract class _DeviceEnitie extends DeviceEntity {
  const _DeviceEnitie._() : super._();
  const factory _DeviceEnitie(
      {@required DeviceUniqueId id,
      @required DeviceDefaultName defaultName,
      @required DeviceUniqueId roomId,
      @required DeviceState state,
      @required DeviceType type}) = _$_DeviceEnitie;

  @override
  DeviceUniqueId get id;
  @override
  DeviceDefaultName get defaultName;
  @override
  DeviceUniqueId get roomId;
  @override
  DeviceState get state;
  @override
  DeviceType get type;
  @override
  @JsonKey(ignore: true)
  _$DeviceEnitieCopyWith<_DeviceEnitie> get copyWith;
}
