// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddUserEntityTearOff {
  const _$AddUserEntityTearOff();

// ignore: unused_element
  _AddUserEntity call(
      {@required AddUserEmail email, @required AddUserPermission permission}) {
    return _AddUserEntity(
      email: email,
      permission: permission,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserEntity = _$AddUserEntityTearOff();

/// @nodoc
mixin _$AddUserEntity {
  AddUserEmail get email;
  AddUserPermission get permission;

  @JsonKey(ignore: true)
  $AddUserEntityCopyWith<AddUserEntity> get copyWith;
}

/// @nodoc
abstract class $AddUserEntityCopyWith<$Res> {
  factory $AddUserEntityCopyWith(
          AddUserEntity value, $Res Function(AddUserEntity) then) =
      _$AddUserEntityCopyWithImpl<$Res>;
  $Res call({AddUserEmail email, AddUserPermission permission});
}

/// @nodoc
class _$AddUserEntityCopyWithImpl<$Res>
    implements $AddUserEntityCopyWith<$Res> {
  _$AddUserEntityCopyWithImpl(this._value, this._then);

  final AddUserEntity _value;
  // ignore: unused_field
  final $Res Function(AddUserEntity) _then;

  @override
  $Res call({
    Object email = freezed,
    Object permission = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as AddUserEmail,
      permission: permission == freezed
          ? _value.permission
          : permission as AddUserPermission,
    ));
  }
}

/// @nodoc
abstract class _$AddUserEntityCopyWith<$Res>
    implements $AddUserEntityCopyWith<$Res> {
  factory _$AddUserEntityCopyWith(
          _AddUserEntity value, $Res Function(_AddUserEntity) then) =
      __$AddUserEntityCopyWithImpl<$Res>;
  @override
  $Res call({AddUserEmail email, AddUserPermission permission});
}

/// @nodoc
class __$AddUserEntityCopyWithImpl<$Res>
    extends _$AddUserEntityCopyWithImpl<$Res>
    implements _$AddUserEntityCopyWith<$Res> {
  __$AddUserEntityCopyWithImpl(
      _AddUserEntity _value, $Res Function(_AddUserEntity) _then)
      : super(_value, (v) => _then(v as _AddUserEntity));

  @override
  _AddUserEntity get _value => super._value as _AddUserEntity;

  @override
  $Res call({
    Object email = freezed,
    Object permission = freezed,
  }) {
    return _then(_AddUserEntity(
      email: email == freezed ? _value.email : email as AddUserEmail,
      permission: permission == freezed
          ? _value.permission
          : permission as AddUserPermission,
    ));
  }
}

/// @nodoc
class _$_AddUserEntity extends _AddUserEntity {
  const _$_AddUserEntity({@required this.email, @required this.permission})
      : assert(email != null),
        assert(permission != null),
        super._();

  @override
  final AddUserEmail email;
  @override
  final AddUserPermission permission;

  @override
  String toString() {
    return 'AddUserEntity(email: $email, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddUserEntity &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(permission);

  @JsonKey(ignore: true)
  @override
  _$AddUserEntityCopyWith<_AddUserEntity> get copyWith =>
      __$AddUserEntityCopyWithImpl<_AddUserEntity>(this, _$identity);
}

abstract class _AddUserEntity extends AddUserEntity {
  const _AddUserEntity._() : super._();
  const factory _AddUserEntity(
      {@required AddUserEmail email,
      @required AddUserPermission permission}) = _$_AddUserEntity;

  @override
  AddUserEmail get email;
  @override
  AddUserPermission get permission;
  @override
  @JsonKey(ignore: true)
  _$AddUserEntityCopyWith<_AddUserEntity> get copyWith;
}
