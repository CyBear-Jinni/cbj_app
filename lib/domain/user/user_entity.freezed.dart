// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEntityTearOff {
  const _$UserEntityTearOff();

  _UserEntity call(
      {required UserUniqueId? id,
      required UserEmail? email,
      required UserName? name,
      UserPass? pass,
      UserFirstName? firstName,
      UserLastName? lastName}) {
    return _UserEntity(
      id: id,
      email: email,
      name: name,
      pass: pass,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

/// @nodoc
const $UserEntity = _$UserEntityTearOff();

/// @nodoc
mixin _$UserEntity {
  UserUniqueId? get id => throw _privateConstructorUsedError;
  UserEmail? get email => throw _privateConstructorUsedError;
  UserName? get name => throw _privateConstructorUsedError;
  UserPass? get pass => throw _privateConstructorUsedError;
  UserFirstName? get firstName => throw _privateConstructorUsedError;
  UserLastName? get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call(
      {UserUniqueId? id,
      UserEmail? email,
      UserName? name,
      UserPass? pass,
      UserFirstName? firstName,
      UserLastName? lastName});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? pass = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserUniqueId?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UserEmail?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserName?,
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as UserPass?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserFirstName?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserLastName?,
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
      {UserUniqueId? id,
      UserEmail? email,
      UserName? name,
      UserPass? pass,
      UserFirstName? firstName,
      UserLastName? lastName});
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
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? pass = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_UserEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserUniqueId?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UserEmail?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserName?,
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as UserPass?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserFirstName?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserLastName?,
    ));
  }
}

/// @nodoc

class _$_UserEntity extends _UserEntity {
  const _$_UserEntity(
      {required this.id,
      required this.email,
      required this.name,
      this.pass,
      this.firstName,
      this.lastName})
      : super._();

  @override
  final UserUniqueId? id;
  @override
  final UserEmail? email;
  @override
  final UserName? name;
  @override
  final UserPass? pass;
  @override
  final UserFirstName? firstName;
  @override
  final UserLastName? lastName;

  @override
  String toString() {
    return 'UserEntity(id: $id, email: $email, name: $name, pass: $pass, firstName: $firstName, lastName: $lastName)';
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
            (identical(other.pass, pass) ||
                const DeepCollectionEquality().equals(other.pass, pass)) &&
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
      const DeepCollectionEquality().hash(pass) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);
}

abstract class _UserEntity extends UserEntity {
  const factory _UserEntity(
      {required UserUniqueId? id,
      required UserEmail? email,
      required UserName? name,
      UserPass? pass,
      UserFirstName? firstName,
      UserLastName? lastName}) = _$_UserEntity;
  const _UserEntity._() : super._();

  @override
  UserUniqueId? get id => throw _privateConstructorUsedError;
  @override
  UserEmail? get email => throw _privateConstructorUsedError;
  @override
  UserName? get name => throw _privateConstructorUsedError;
  @override
  UserPass? get pass => throw _privateConstructorUsedError;
  @override
  UserFirstName? get firstName => throw _privateConstructorUsedError;
  @override
  UserLastName? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
