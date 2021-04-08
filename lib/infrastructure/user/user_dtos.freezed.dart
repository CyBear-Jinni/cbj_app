// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDtos _$UserDtosFromJson(Map<String, dynamic> json) {
  return _UserDtos.fromJson(json);
}

/// @nodoc
class _$UserDtosTearOff {
  const _$UserDtosTearOff();

// ignore: unused_element
  _UserDtos call(
      {@JsonKey(ignore: true) String id,
      @required String email,
      @required String name,
      String firstName,
      String lastName}) {
    return _UserDtos(
      id: id,
      email: email,
      name: name,
      firstName: firstName,
      lastName: lastName,
    );
  }

// ignore: unused_element
  UserDtos fromJson(Map<String, Object> json) {
    return UserDtos.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDtos = _$UserDtosTearOff();

/// @nodoc
mixin _$UserDtos {
  @JsonKey(ignore: true)
  String get id;
  String get email;
  String get name;
  String get firstName;
  String get lastName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtosCopyWith<UserDtos> get copyWith;
}

/// @nodoc
abstract class $UserDtosCopyWith<$Res> {
  factory $UserDtosCopyWith(UserDtos value, $Res Function(UserDtos) then) =
      _$UserDtosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String email,
      String name,
      String firstName,
      String lastName});
}

/// @nodoc
class _$UserDtosCopyWithImpl<$Res> implements $UserDtosCopyWith<$Res> {
  _$UserDtosCopyWithImpl(this._value, this._then);

  final UserDtos _value;
  // ignore: unused_field
  final $Res Function(UserDtos) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtosCopyWith<$Res> implements $UserDtosCopyWith<$Res> {
  factory _$UserDtosCopyWith(_UserDtos value, $Res Function(_UserDtos) then) =
      __$UserDtosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String email,
      String name,
      String firstName,
      String lastName});
}

/// @nodoc
class __$UserDtosCopyWithImpl<$Res> extends _$UserDtosCopyWithImpl<$Res>
    implements _$UserDtosCopyWith<$Res> {
  __$UserDtosCopyWithImpl(_UserDtos _value, $Res Function(_UserDtos) _then)
      : super(_value, (v) => _then(v as _UserDtos));

  @override
  _UserDtos get _value => super._value as _UserDtos;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_UserDtos(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDtos extends _UserDtos {
  const _$_UserDtos(
      {@JsonKey(ignore: true) this.id,
      @required this.email,
      @required this.name,
      this.firstName,
      this.lastName})
      : assert(email != null),
        assert(name != null),
        super._();

  factory _$_UserDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'UserDtos(id: $id, email: $email, name: $name, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDtos &&
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
  _$UserDtosCopyWith<_UserDtos> get copyWith =>
      __$UserDtosCopyWithImpl<_UserDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtosToJson(this);
  }
}

abstract class _UserDtos extends UserDtos {
  const _UserDtos._() : super._();
  const factory _UserDtos(
      {@JsonKey(ignore: true) String id,
      @required String email,
      @required String name,
      String firstName,
      String lastName}) = _$_UserDtos;

  factory _UserDtos.fromJson(Map<String, dynamic> json) = _$_UserDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$UserDtosCopyWith<_UserDtos> get copyWith;
}
