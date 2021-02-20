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
  _UserDtos call({@JsonKey(ignore: true) String id, @required String email}) {
    return _UserDtos(
      id: id,
      email: email,
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
  String get id; // @required String defaultName,
  String get email;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtosCopyWith<UserDtos> get copyWith;
}

/// @nodoc
abstract class $UserDtosCopyWith<$Res> {
  factory $UserDtosCopyWith(UserDtos value, $Res Function(UserDtos) then) =
      _$UserDtosCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String email});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtosCopyWith<$Res> implements $UserDtosCopyWith<$Res> {
  factory _$UserDtosCopyWith(_UserDtos value, $Res Function(_UserDtos) then) =
      __$UserDtosCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String email});
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
  }) {
    return _then(_UserDtos(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDtos extends _UserDtos {
  const _$_UserDtos({@JsonKey(ignore: true) this.id, @required this.email})
      : assert(email != null),
        super._();

  factory _$_UserDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override // @required String defaultName,
  final String email;

  @override
  String toString() {
    return 'UserDtos(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email);

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
      {@JsonKey(ignore: true) String id, @required String email}) = _$_UserDtos;

  factory _UserDtos.fromJson(Map<String, dynamic> json) = _$_UserDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override // @required String defaultName,
  String get email;
  @override
  @JsonKey(ignore: true)
  _$UserDtosCopyWith<_UserDtos> get copyWith;
}
