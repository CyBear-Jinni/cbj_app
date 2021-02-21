// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEntityTearOff {
  const _$UserEntityTearOff();

// ignore: unused_element
  _UserEntity call(
      {@required UserUniqueId id,
      @required UserEmail email,
      @required UserName name,
      UserFirstName firstName,
      UserLastName lastName}) {
    return _UserEntity(
      id: id,
      email: email,
      name: name,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserEntity = _$UserEntityTearOff();

/// @nodoc
mixin _$UserEntity {
  UserUniqueId get id;
  UserEmail get email;
  UserName get name;
  UserFirstName get firstName;
  UserLastName get lastName;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call(
      {UserUniqueId id,
      UserEmail email,
      UserName name,
      UserFirstName firstName,
      UserLastName lastName});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UserUniqueId,
      email: email == freezed ? _value.email : email as UserEmail,
      name: name == freezed ? _value.name : name as UserName,
      firstName:
          firstName == freezed ? _value.firstName : firstName as UserFirstName,
      lastName:
          lastName == freezed ? _value.lastName : lastName as UserLastName,
    ));
  }
}

/// @nodoc
abstract class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) then) =
      __$UserEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserUniqueId id,
      UserEmail email,
      UserName name,
      UserFirstName firstName,
      UserLastName lastName});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(
      _UserEntity _value, $Res Function(_UserEntity) _then)
      : super(_value, (v) => _then(v as _UserEntity));

  @override
  _UserEntity get _value => super._value as _UserEntity;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_UserEntity(
      id: id == freezed ? _value.id : id as UserUniqueId,
      email: email == freezed ? _value.email : email as UserEmail,
      name: name == freezed ? _value.name : name as UserName,
      firstName:
          firstName == freezed ? _value.firstName : firstName as UserFirstName,
      lastName:
          lastName == freezed ? _value.lastName : lastName as UserLastName,
    ));
  }
}

/// @nodoc
class _$_UserEntity extends _UserEntity {
  const _$_UserEntity(
      {@required this.id,
      @required this.email,
      @required this.name,
      this.firstName,
      this.lastName})
      : assert(id != null),
        assert(email != null),
        assert(name != null),
        super._();

  @override
  final UserUniqueId id;
  @override
  final UserEmail email;
  @override
  final UserName name;
  @override
  final UserFirstName firstName;
  @override
  final UserLastName lastName;

  @override
  String toString() {
    return 'UserEntity(id: $id, email: $email, name: $name, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);
}

abstract class _UserEntity extends UserEntity {
  const _UserEntity._() : super._();
  const factory _UserEntity(
      {@required UserUniqueId id,
      @required UserEmail email,
      @required UserName name,
      UserFirstName firstName,
      UserLastName lastName}) = _$_UserEntity;

  @override
  UserUniqueId get id;
  @override
  UserEmail get email;
  @override
  UserName get name;
  @override
  UserFirstName get firstName;
  @override
  UserLastName get lastName;
  @override
  @JsonKey(ignore: true)
  _$UserEntityCopyWith<_UserEntity> get copyWith;
}
