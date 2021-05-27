// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUserEntityTearOff {
  const _$HomeUserEntityTearOff();

  _HomeUserEntity call(
      {required HomeUserUniqueId? id,
      required HomeUserEmail? email,
      required HomeUserName? name,
      required HomeUserPermission? permission}) {
    return _HomeUserEntity(
      id: id,
      email: email,
      name: name,
      permission: permission,
    );
  }
}

/// @nodoc
const $HomeUserEntity = _$HomeUserEntityTearOff();

/// @nodoc
mixin _$HomeUserEntity {
  HomeUserUniqueId? get id => throw _privateConstructorUsedError;
  HomeUserEmail? get email => throw _privateConstructorUsedError;
  HomeUserName? get name => throw _privateConstructorUsedError;
  HomeUserPermission? get permission => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUserEntityCopyWith<HomeUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserEntityCopyWith<$Res> {
  factory $HomeUserEntityCopyWith(
          HomeUserEntity value, $Res Function(HomeUserEntity) then) =
      _$HomeUserEntityCopyWithImpl<$Res>;
  $Res call(
      {HomeUserUniqueId? id,
      HomeUserEmail? email,
      HomeUserName? name,
      HomeUserPermission? permission});
}

/// @nodoc
class _$HomeUserEntityCopyWithImpl<$Res>
    implements $HomeUserEntityCopyWith<$Res> {
  _$HomeUserEntityCopyWithImpl(this._value, this._then);

  final HomeUserEntity _value;
  // ignore: unused_field
  final $Res Function(HomeUserEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? permission = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as HomeUserUniqueId?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as HomeUserEmail?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HomeUserName?,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as HomeUserPermission?,
    ));
  }
}

/// @nodoc
abstract class _$HomeUserEntityCopyWith<$Res>
    implements $HomeUserEntityCopyWith<$Res> {
  factory _$HomeUserEntityCopyWith(
          _HomeUserEntity value, $Res Function(_HomeUserEntity) then) =
      __$HomeUserEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomeUserUniqueId? id,
      HomeUserEmail? email,
      HomeUserName? name,
      HomeUserPermission? permission});
}

/// @nodoc
class __$HomeUserEntityCopyWithImpl<$Res>
    extends _$HomeUserEntityCopyWithImpl<$Res>
    implements _$HomeUserEntityCopyWith<$Res> {
  __$HomeUserEntityCopyWithImpl(
      _HomeUserEntity _value, $Res Function(_HomeUserEntity) _then)
      : super(_value, (v) => _then(v as _HomeUserEntity));

  @override
  _HomeUserEntity get _value => super._value as _HomeUserEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? permission = freezed,
  }) {
    return _then(_HomeUserEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as HomeUserUniqueId?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as HomeUserEmail?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HomeUserName?,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as HomeUserPermission?,
    ));
  }
}

/// @nodoc

class _$_HomeUserEntity extends _HomeUserEntity {
  const _$_HomeUserEntity(
      {required this.id,
      required this.email,
      required this.name,
      required this.permission})
      : super._();

  @override
  final HomeUserUniqueId? id;
  @override
  final HomeUserEmail? email;
  @override
  final HomeUserName? name;
  @override
  final HomeUserPermission? permission;

  @override
  String toString() {
    return 'HomeUserEntity(id: $id, email: $email, name: $name, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeUserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission);

  @JsonKey(ignore: true)
  @override
  _$HomeUserEntityCopyWith<_HomeUserEntity> get copyWith =>
      __$HomeUserEntityCopyWithImpl<_HomeUserEntity>(this, _$identity);
}

abstract class _HomeUserEntity extends HomeUserEntity {
  const factory _HomeUserEntity(
      {required HomeUserUniqueId? id,
      required HomeUserEmail? email,
      required HomeUserName? name,
      required HomeUserPermission? permission}) = _$_HomeUserEntity;
  const _HomeUserEntity._() : super._();

  @override
  HomeUserUniqueId? get id => throw _privateConstructorUsedError;
  @override
  HomeUserEmail? get email => throw _privateConstructorUsedError;
  @override
  HomeUserName? get name => throw _privateConstructorUsedError;
  @override
  HomeUserPermission? get permission => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeUserEntityCopyWith<_HomeUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
