// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_user_to_home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddUserToHomeEntityTearOff {
  const _$AddUserToHomeEntityTearOff();

// ignore: unused_element
  _AddUserToHomeEntity call(
      {@required AddUserToHomeEmail email,
      @required AddUserToHomePermission permission}) {
    return _AddUserToHomeEntity(
      email: email,
      permission: permission,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserToHomeEntity = _$AddUserToHomeEntityTearOff();

/// @nodoc
mixin _$AddUserToHomeEntity {
  AddUserToHomeEmail get email;
  AddUserToHomePermission get permission;

  @JsonKey(ignore: true)
  $AddUserToHomeEntityCopyWith<AddUserToHomeEntity> get copyWith;
}

/// @nodoc
abstract class $AddUserToHomeEntityCopyWith<$Res> {
  factory $AddUserToHomeEntityCopyWith(
          AddUserToHomeEntity value, $Res Function(AddUserToHomeEntity) then) =
      _$AddUserToHomeEntityCopyWithImpl<$Res>;
  $Res call({AddUserToHomeEmail email, AddUserToHomePermission permission});
}

/// @nodoc
class _$AddUserToHomeEntityCopyWithImpl<$Res>
    implements $AddUserToHomeEntityCopyWith<$Res> {
  _$AddUserToHomeEntityCopyWithImpl(this._value, this._then);

  final AddUserToHomeEntity _value;
  // ignore: unused_field
  final $Res Function(AddUserToHomeEntity) _then;

  @override
  $Res call({
    Object email = freezed,
    Object permission = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as AddUserToHomeEmail,
      permission: permission == freezed
          ? _value.permission
          : permission as AddUserToHomePermission,
    ));
  }
}

/// @nodoc
abstract class _$AddUserToHomeEntityCopyWith<$Res>
    implements $AddUserToHomeEntityCopyWith<$Res> {
  factory _$AddUserToHomeEntityCopyWith(_AddUserToHomeEntity value,
          $Res Function(_AddUserToHomeEntity) then) =
      __$AddUserToHomeEntityCopyWithImpl<$Res>;
  @override
  $Res call({AddUserToHomeEmail email, AddUserToHomePermission permission});
}

/// @nodoc
class __$AddUserToHomeEntityCopyWithImpl<$Res>
    extends _$AddUserToHomeEntityCopyWithImpl<$Res>
    implements _$AddUserToHomeEntityCopyWith<$Res> {
  __$AddUserToHomeEntityCopyWithImpl(
      _AddUserToHomeEntity _value, $Res Function(_AddUserToHomeEntity) _then)
      : super(_value, (v) => _then(v as _AddUserToHomeEntity));

  @override
  _AddUserToHomeEntity get _value => super._value as _AddUserToHomeEntity;

  @override
  $Res call({
    Object email = freezed,
    Object permission = freezed,
  }) {
    return _then(_AddUserToHomeEntity(
      email: email == freezed ? _value.email : email as AddUserToHomeEmail,
      permission: permission == freezed
          ? _value.permission
          : permission as AddUserToHomePermission,
    ));
  }
}

/// @nodoc
class _$_AddUserToHomeEntity extends _AddUserToHomeEntity {
  const _$_AddUserToHomeEntity(
      {@required this.email, @required this.permission})
      : assert(email != null),
        assert(permission != null),
        super._();

  @override
  final AddUserToHomeEmail email;
  @override
  final AddUserToHomePermission permission;

  @override
  String toString() {
    return 'AddUserToHomeEntity(email: $email, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddUserToHomeEntity &&
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
  _$AddUserToHomeEntityCopyWith<_AddUserToHomeEntity> get copyWith =>
      __$AddUserToHomeEntityCopyWithImpl<_AddUserToHomeEntity>(
          this, _$identity);
}

abstract class _AddUserToHomeEntity extends AddUserToHomeEntity {
  const _AddUserToHomeEntity._() : super._();
  const factory _AddUserToHomeEntity(
      {@required AddUserToHomeEmail email,
      @required AddUserToHomePermission permission}) = _$_AddUserToHomeEntity;

  @override
  AddUserToHomeEmail get email;
  @override
  AddUserToHomePermission get permission;
  @override
  @JsonKey(ignore: true)
  _$AddUserToHomeEntityCopyWith<_AddUserToHomeEntity> get copyWith;
}
