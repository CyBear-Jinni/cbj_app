// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateHomeEntityTearOff {
  const _$CreateHomeEntityTearOff();

// ignore: unused_element
  _CreateHomeEntity call(
      {@required HomeUniqueId id,
      @required HomeName name,
      HomeDevicesUserEmail homeDevicesUserEmail,
      HomeDevicesUserPassword homeDevicesUserPassword}) {
    return _CreateHomeEntity(
      id: id,
      name: name,
      homeDevicesUserEmail: homeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHomeEntity = _$CreateHomeEntityTearOff();

/// @nodoc
mixin _$CreateHomeEntity {
  HomeUniqueId get id;
  HomeName get name;
  HomeDevicesUserEmail get homeDevicesUserEmail;
  HomeDevicesUserPassword get homeDevicesUserPassword;

  @JsonKey(ignore: true)
  $CreateHomeEntityCopyWith<CreateHomeEntity> get copyWith;
}

/// @nodoc
abstract class $CreateHomeEntityCopyWith<$Res> {
  factory $CreateHomeEntityCopyWith(
          CreateHomeEntity value, $Res Function(CreateHomeEntity) then) =
      _$CreateHomeEntityCopyWithImpl<$Res>;
  $Res call(
      {HomeUniqueId id,
      HomeName name,
      HomeDevicesUserEmail homeDevicesUserEmail,
      HomeDevicesUserPassword homeDevicesUserPassword});
}

/// @nodoc
class _$CreateHomeEntityCopyWithImpl<$Res>
    implements $CreateHomeEntityCopyWith<$Res> {
  _$CreateHomeEntityCopyWithImpl(this._value, this._then);

  final CreateHomeEntity _value;
  // ignore: unused_field
  final $Res Function(CreateHomeEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object homeDevicesUserEmail = freezed,
    Object homeDevicesUserPassword = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as HomeUniqueId,
      name: name == freezed ? _value.name : name as HomeName,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail as HomeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword as HomeDevicesUserPassword,
    ));
  }
}

/// @nodoc
abstract class _$CreateHomeEntityCopyWith<$Res>
    implements $CreateHomeEntityCopyWith<$Res> {
  factory _$CreateHomeEntityCopyWith(
          _CreateHomeEntity value, $Res Function(_CreateHomeEntity) then) =
      __$CreateHomeEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomeUniqueId id,
      HomeName name,
      HomeDevicesUserEmail homeDevicesUserEmail,
      HomeDevicesUserPassword homeDevicesUserPassword});
}

/// @nodoc
class __$CreateHomeEntityCopyWithImpl<$Res>
    extends _$CreateHomeEntityCopyWithImpl<$Res>
    implements _$CreateHomeEntityCopyWith<$Res> {
  __$CreateHomeEntityCopyWithImpl(
      _CreateHomeEntity _value, $Res Function(_CreateHomeEntity) _then)
      : super(_value, (v) => _then(v as _CreateHomeEntity));

  @override
  _CreateHomeEntity get _value => super._value as _CreateHomeEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object homeDevicesUserEmail = freezed,
    Object homeDevicesUserPassword = freezed,
  }) {
    return _then(_CreateHomeEntity(
      id: id == freezed ? _value.id : id as HomeUniqueId,
      name: name == freezed ? _value.name : name as HomeName,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail as HomeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword as HomeDevicesUserPassword,
    ));
  }
}

/// @nodoc
class _$_CreateHomeEntity implements _CreateHomeEntity {
  const _$_CreateHomeEntity(
      {@required this.id,
      @required this.name,
      this.homeDevicesUserEmail,
      this.homeDevicesUserPassword})
      : assert(id != null),
        assert(name != null);

  @override
  final HomeUniqueId id;
  @override
  final HomeName name;
  @override
  final HomeDevicesUserEmail homeDevicesUserEmail;
  @override
  final HomeDevicesUserPassword homeDevicesUserPassword;

  @override
  String toString() {
    return 'CreateHomeEntity(id: $id, name: $name, homeDevicesUserEmail: $homeDevicesUserEmail, homeDevicesUserPassword: $homeDevicesUserPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHomeEntity &&
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
                    other.homeDevicesUserPassword, homeDevicesUserPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(homeDevicesUserEmail) ^
      const DeepCollectionEquality().hash(homeDevicesUserPassword);

  @JsonKey(ignore: true)
  @override
  _$CreateHomeEntityCopyWith<_CreateHomeEntity> get copyWith =>
      __$CreateHomeEntityCopyWithImpl<_CreateHomeEntity>(this, _$identity);
}

abstract class _CreateHomeEntity implements CreateHomeEntity {
  const factory _CreateHomeEntity(
      {@required HomeUniqueId id,
      @required HomeName name,
      HomeDevicesUserEmail homeDevicesUserEmail,
      HomeDevicesUserPassword homeDevicesUserPassword}) = _$_CreateHomeEntity;

  @override
  HomeUniqueId get id;
  @override
  HomeName get name;
  @override
  HomeDevicesUserEmail get homeDevicesUserEmail;
  @override
  HomeDevicesUserPassword get homeDevicesUserPassword;
  @override
  @JsonKey(ignore: true)
  _$CreateHomeEntityCopyWith<_CreateHomeEntity> get copyWith;
}
