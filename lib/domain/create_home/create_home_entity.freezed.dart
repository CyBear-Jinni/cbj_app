// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateHomeEntityTearOff {
  const _$CreateHomeEntityTearOff();

  _CreateHomeEntity call(
      {required HomeUniqueId id,
      required HomeName name,
      HomeDevicesUserId? homeDevicesUserId,
      HomeDevicesUserEmail? homeDevicesUserEmail,
      HomeDevicesUserPassword? homeDevicesUserPassword}) {
    return _CreateHomeEntity(
      id: id,
      name: name,
      homeDevicesUserId: homeDevicesUserId,
      homeDevicesUserEmail: homeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword,
    );
  }
}

/// @nodoc
const $CreateHomeEntity = _$CreateHomeEntityTearOff();

/// @nodoc
mixin _$CreateHomeEntity {
  HomeUniqueId get id => throw _privateConstructorUsedError;
  HomeName get name => throw _privateConstructorUsedError;
  HomeDevicesUserId? get homeDevicesUserId =>
      throw _privateConstructorUsedError;
  HomeDevicesUserEmail? get homeDevicesUserEmail =>
      throw _privateConstructorUsedError;
  HomeDevicesUserPassword? get homeDevicesUserPassword =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateHomeEntityCopyWith<CreateHomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateHomeEntityCopyWith<$Res> {
  factory $CreateHomeEntityCopyWith(
          CreateHomeEntity value, $Res Function(CreateHomeEntity) then) =
      _$CreateHomeEntityCopyWithImpl<$Res>;
  $Res call(
      {HomeUniqueId id,
      HomeName name,
      HomeDevicesUserId? homeDevicesUserId,
      HomeDevicesUserEmail? homeDevicesUserEmail,
      HomeDevicesUserPassword? homeDevicesUserPassword});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? homeDevicesUserId = freezed,
    Object? homeDevicesUserEmail = freezed,
    Object? homeDevicesUserPassword = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as HomeUniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HomeName,
      homeDevicesUserId: homeDevicesUserId == freezed
          ? _value.homeDevicesUserId
          : homeDevicesUserId // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserId?,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserEmail?,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserPassword?,
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
      HomeDevicesUserId? homeDevicesUserId,
      HomeDevicesUserEmail? homeDevicesUserEmail,
      HomeDevicesUserPassword? homeDevicesUserPassword});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? homeDevicesUserId = freezed,
    Object? homeDevicesUserEmail = freezed,
    Object? homeDevicesUserPassword = freezed,
  }) {
    return _then(_CreateHomeEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as HomeUniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HomeName,
      homeDevicesUserId: homeDevicesUserId == freezed
          ? _value.homeDevicesUserId
          : homeDevicesUserId // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserId?,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserEmail?,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword // ignore: cast_nullable_to_non_nullable
              as HomeDevicesUserPassword?,
    ));
  }
}

/// @nodoc

class _$_CreateHomeEntity implements _CreateHomeEntity {
  const _$_CreateHomeEntity(
      {required this.id,
      required this.name,
      this.homeDevicesUserId,
      this.homeDevicesUserEmail,
      this.homeDevicesUserPassword});

  @override
  final HomeUniqueId id;
  @override
  final HomeName name;
  @override
  final HomeDevicesUserId? homeDevicesUserId;
  @override
  final HomeDevicesUserEmail? homeDevicesUserEmail;
  @override
  final HomeDevicesUserPassword? homeDevicesUserPassword;

  @override
  String toString() {
    return 'CreateHomeEntity(id: $id, name: $name, homeDevicesUserId: $homeDevicesUserId, homeDevicesUserEmail: $homeDevicesUserEmail, homeDevicesUserPassword: $homeDevicesUserPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHomeEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.homeDevicesUserId, homeDevicesUserId) ||
                const DeepCollectionEquality()
                    .equals(other.homeDevicesUserId, homeDevicesUserId)) &&
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
      const DeepCollectionEquality().hash(homeDevicesUserId) ^
      const DeepCollectionEquality().hash(homeDevicesUserEmail) ^
      const DeepCollectionEquality().hash(homeDevicesUserPassword);

  @JsonKey(ignore: true)
  @override
  _$CreateHomeEntityCopyWith<_CreateHomeEntity> get copyWith =>
      __$CreateHomeEntityCopyWithImpl<_CreateHomeEntity>(this, _$identity);
}

abstract class _CreateHomeEntity implements CreateHomeEntity {
  const factory _CreateHomeEntity(
      {required HomeUniqueId id,
      required HomeName name,
      HomeDevicesUserId? homeDevicesUserId,
      HomeDevicesUserEmail? homeDevicesUserEmail,
      HomeDevicesUserPassword? homeDevicesUserPassword}) = _$_CreateHomeEntity;

  @override
  HomeUniqueId get id => throw _privateConstructorUsedError;
  @override
  HomeName get name => throw _privateConstructorUsedError;
  @override
  HomeDevicesUserId? get homeDevicesUserId =>
      throw _privateConstructorUsedError;
  @override
  HomeDevicesUserEmail? get homeDevicesUserEmail =>
      throw _privateConstructorUsedError;
  @override
  HomeDevicesUserPassword? get homeDevicesUserPassword =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateHomeEntityCopyWith<_CreateHomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
