// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_home_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateHomeDtos _$CreateHomeDtosFromJson(Map<String, dynamic> json) {
  return _CreateHomeDtos.fromJson(json);
}

/// @nodoc
class _$CreateHomeDtosTearOff {
  const _$CreateHomeDtosTearOff();

// ignore: unused_element
  _CreateHomeDtos call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) String name,
      @required String homeDevicesUserEmail,
      @required String homeDevicesUserPassword,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _CreateHomeDtos(
      id: id,
      name: name,
      homeDevicesUserEmail: homeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  CreateHomeDtos fromJson(Map<String, Object> json) {
    return CreateHomeDtos.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHomeDtos = _$CreateHomeDtosTearOff();

/// @nodoc
mixin _$CreateHomeDtos {
  @JsonKey(ignore: true)
  String get id;
  @JsonKey(ignore: true)
  String get name;
  String get homeDevicesUserEmail;
  String get homeDevicesUserPassword;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreateHomeDtosCopyWith<CreateHomeDtos> get copyWith;
}

/// @nodoc
abstract class $CreateHomeDtosCopyWith<$Res> {
  factory $CreateHomeDtosCopyWith(
          CreateHomeDtos value, $Res Function(CreateHomeDtos) then) =
      _$CreateHomeDtosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) String name,
      String homeDevicesUserEmail,
      String homeDevicesUserPassword,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$CreateHomeDtosCopyWithImpl<$Res>
    implements $CreateHomeDtosCopyWith<$Res> {
  _$CreateHomeDtosCopyWithImpl(this._value, this._then);

  final CreateHomeDtos _value;
  // ignore: unused_field
  final $Res Function(CreateHomeDtos) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object homeDevicesUserEmail = freezed,
    Object homeDevicesUserPassword = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail as String,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$CreateHomeDtosCopyWith<$Res>
    implements $CreateHomeDtosCopyWith<$Res> {
  factory _$CreateHomeDtosCopyWith(
          _CreateHomeDtos value, $Res Function(_CreateHomeDtos) then) =
      __$CreateHomeDtosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) String name,
      String homeDevicesUserEmail,
      String homeDevicesUserPassword,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$CreateHomeDtosCopyWithImpl<$Res>
    extends _$CreateHomeDtosCopyWithImpl<$Res>
    implements _$CreateHomeDtosCopyWith<$Res> {
  __$CreateHomeDtosCopyWithImpl(
      _CreateHomeDtos _value, $Res Function(_CreateHomeDtos) _then)
      : super(_value, (v) => _then(v as _CreateHomeDtos));

  @override
  _CreateHomeDtos get _value => super._value as _CreateHomeDtos;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object homeDevicesUserEmail = freezed,
    Object homeDevicesUserPassword = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_CreateHomeDtos(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail as String,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CreateHomeDtos extends _CreateHomeDtos {
  const _$_CreateHomeDtos(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(ignore: true) this.name,
      @required this.homeDevicesUserEmail,
      @required this.homeDevicesUserPassword,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(homeDevicesUserEmail != null),
        assert(homeDevicesUserPassword != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_CreateHomeDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateHomeDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  @JsonKey(ignore: true)
  final String name;
  @override
  final String homeDevicesUserEmail;
  @override
  final String homeDevicesUserPassword;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'CreateHomeDtos(id: $id, name: $name, homeDevicesUserEmail: $homeDevicesUserEmail, homeDevicesUserPassword: $homeDevicesUserPassword, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHomeDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.homeDevicesUserEmail, homeDevicesUserEmail) ||
                const DeepCollectionEquality().equals(
                    other.homeDevicesUserEmail, homeDevicesUserEmail)) &&
            (identical(
                    other.homeDevicesUserPassword, homeDevicesUserPassword) ||
                const DeepCollectionEquality().equals(
                    other.homeDevicesUserPassword, homeDevicesUserPassword)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(homeDevicesUserEmail) ^
      const DeepCollectionEquality().hash(homeDevicesUserPassword) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$CreateHomeDtosCopyWith<_CreateHomeDtos> get copyWith =>
      __$CreateHomeDtosCopyWithImpl<_CreateHomeDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateHomeDtosToJson(this);
  }
}

abstract class _CreateHomeDtos extends CreateHomeDtos {
  const _CreateHomeDtos._() : super._();
  const factory _CreateHomeDtos(
          {@JsonKey(ignore: true) String id,
          @JsonKey(ignore: true) String name,
          @required String homeDevicesUserEmail,
          @required String homeDevicesUserPassword,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_CreateHomeDtos;

  factory _CreateHomeDtos.fromJson(Map<String, dynamic> json) =
      _$_CreateHomeDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  @JsonKey(ignore: true)
  String get name;
  @override
  String get homeDevicesUserEmail;
  @override
  String get homeDevicesUserPassword;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$CreateHomeDtosCopyWith<_CreateHomeDtos> get copyWith;
}
