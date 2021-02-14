// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeviceDtos _$DeviceDtosFromJson(Map<String, dynamic> json) {
  return _DeviceDtos.fromJson(json);
}

/// @nodoc
class _$DeviceDtosTearOff {
  const _$DeviceDtosTearOff();

// ignore: unused_element
  _DeviceDtos call(
      {@required String id,
      @required String defaultName,
      @required String roomId,
      @required String state,
      @required String type}) {
    return _DeviceDtos(
      id: id,
      defaultName: defaultName,
      roomId: roomId,
      state: state,
      type: type,
    );
  }

// ignore: unused_element
  DeviceDtos fromJson(Map<String, Object> json) {
    return DeviceDtos.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceDtos = _$DeviceDtosTearOff();

/// @nodoc
mixin _$DeviceDtos {
  String get id;
  String get defaultName;
  String get roomId;
  String get state;
  String get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DeviceDtosCopyWith<DeviceDtos> get copyWith;
}

/// @nodoc
abstract class $DeviceDtosCopyWith<$Res> {
  factory $DeviceDtosCopyWith(
          DeviceDtos value, $Res Function(DeviceDtos) then) =
      _$DeviceDtosCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String defaultName,
      String roomId,
      String state,
      String type});
}

/// @nodoc
class _$DeviceDtosCopyWithImpl<$Res> implements $DeviceDtosCopyWith<$Res> {
  _$DeviceDtosCopyWithImpl(this._value, this._then);

  final DeviceDtos _value;
  // ignore: unused_field
  final $Res Function(DeviceDtos) _then;

  @override
  $Res call({
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      defaultName:
          defaultName == freezed ? _value.defaultName : defaultName as String,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      state: state == freezed ? _value.state : state as String,
      type: type == freezed ? _value.type : type as String,
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
      {String id,
      String defaultName,
      String roomId,
      String state,
      String type});
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
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object type = freezed,
  }) {
    return _then(_DeviceDtos(
      id: id == freezed ? _value.id : id as String,
      defaultName:
          defaultName == freezed ? _value.defaultName : defaultName as String,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      state: state == freezed ? _value.state : state as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DeviceDtos extends _DeviceDtos {
  const _$_DeviceDtos(
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

  factory _$_DeviceDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceDtosFromJson(json);

  @override
  final String id;
  @override
  final String defaultName;
  @override
  final String roomId;
  @override
  final String state;
  @override
  final String type;

  @override
  String toString() {
    return 'DeviceDtos(id: $id, defaultName: $defaultName, roomId: $roomId, state: $state, type: $type)';
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
  _$DeviceDtosCopyWith<_DeviceDtos> get copyWith =>
      __$DeviceDtosCopyWithImpl<_DeviceDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceDtosToJson(this);
  }
}

abstract class _DeviceDtos extends DeviceDtos {
  const _DeviceDtos._() : super._();
  const factory _DeviceDtos(
      {@required String id,
      @required String defaultName,
      @required String roomId,
      @required String state,
      @required String type}) = _$_DeviceDtos;

  factory _DeviceDtos.fromJson(Map<String, dynamic> json) =
      _$_DeviceDtos.fromJson;

  @override
  String get id;
  @override
  String get defaultName;
  @override
  String get roomId;
  @override
  String get state;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$DeviceDtosCopyWith<_DeviceDtos> get copyWith;
}
