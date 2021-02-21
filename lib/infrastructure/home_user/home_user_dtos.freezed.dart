// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeUserDtos _$HomeUserDtosFromJson(Map<String, dynamic> json) {
  return _HomeUserDtos.fromJson(json);
}

/// @nodoc
class _$HomeUserDtosTearOff {
  const _$HomeUserDtosTearOff();

// ignore: unused_element
  _HomeUserDtos call(
      {@JsonKey(ignore: true) String id,
      @required String email,
      @required String name}) {
    return _HomeUserDtos(
      id: id,
      email: email,
      name: name,
    );
  }

// ignore: unused_element
  HomeUserDtos fromJson(Map<String, Object> json) {
    return HomeUserDtos.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HomeUserDtos = _$HomeUserDtosTearOff();

/// @nodoc
mixin _$HomeUserDtos {
  @JsonKey(ignore: true)
  String get id; // @required String defaultName,
  String get email;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HomeUserDtosCopyWith<HomeUserDtos> get copyWith;
}

/// @nodoc
abstract class $HomeUserDtosCopyWith<$Res> {
  factory $HomeUserDtosCopyWith(
          HomeUserDtos value, $Res Function(HomeUserDtos) then) =
      _$HomeUserDtosCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String email, String name});
}

/// @nodoc
class _$HomeUserDtosCopyWithImpl<$Res> implements $HomeUserDtosCopyWith<$Res> {
  _$HomeUserDtosCopyWithImpl(this._value, this._then);

  final HomeUserDtos _value;
  // ignore: unused_field
  final $Res Function(HomeUserDtos) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeUserDtosCopyWith<$Res>
    implements $HomeUserDtosCopyWith<$Res> {
  factory _$HomeUserDtosCopyWith(
          _HomeUserDtos value, $Res Function(_HomeUserDtos) then) =
      __$HomeUserDtosCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String email, String name});
}

/// @nodoc
class __$HomeUserDtosCopyWithImpl<$Res> extends _$HomeUserDtosCopyWithImpl<$Res>
    implements _$HomeUserDtosCopyWith<$Res> {
  __$HomeUserDtosCopyWithImpl(
      _HomeUserDtos _value, $Res Function(_HomeUserDtos) _then)
      : super(_value, (v) => _then(v as _HomeUserDtos));

  @override
  _HomeUserDtos get _value => super._value as _HomeUserDtos;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_HomeUserDtos(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HomeUserDtos extends _HomeUserDtos {
  const _$_HomeUserDtos(
      {@JsonKey(ignore: true) this.id,
      @required this.email,
      @required this.name})
      : assert(email != null),
        assert(name != null),
        super._();

  factory _$_HomeUserDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeUserDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override // @required String defaultName,
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'HomeUserDtos(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeUserDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$HomeUserDtosCopyWith<_HomeUserDtos> get copyWith =>
      __$HomeUserDtosCopyWithImpl<_HomeUserDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeUserDtosToJson(this);
  }
}

abstract class _HomeUserDtos extends HomeUserDtos {
  const _HomeUserDtos._() : super._();
  const factory _HomeUserDtos(
      {@JsonKey(ignore: true) String id,
      @required String email,
      @required String name}) = _$_HomeUserDtos;

  factory _HomeUserDtos.fromJson(Map<String, dynamic> json) =
      _$_HomeUserDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override // @required String defaultName,
  String get email;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$HomeUserDtosCopyWith<_HomeUserDtos> get copyWith;
}
