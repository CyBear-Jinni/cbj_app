// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_home_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateHomeDtos _$CreateHomeDtosFromJson(Map<String, dynamic> json) {
  return _CreateHomeDtos.fromJson(json);
}

/// @nodoc
class _$CreateHomeDtosTearOff {
  const _$CreateHomeDtosTearOff();

  _CreateHomeDtos call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(ignore: true) String? name,
      required String homeDevicesUserId,
      required String homeDevicesUserEmail,
      required String homeDevicesUserPassword}) {
    return _CreateHomeDtos(
      id: id,
      name: name,
      homeDevicesUserId: homeDevicesUserId,
      homeDevicesUserEmail: homeDevicesUserEmail,
      homeDevicesUserPassword: homeDevicesUserPassword,
    );
  }

  CreateHomeDtos fromJson(Map<String, Object> json) {
    return CreateHomeDtos.fromJson(json);
  }
}

/// @nodoc
const $CreateHomeDtos = _$CreateHomeDtosTearOff();

/// @nodoc
mixin _$CreateHomeDtos {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get name => throw _privateConstructorUsedError;
  String get homeDevicesUserId => throw _privateConstructorUsedError;
  String get homeDevicesUserEmail => throw _privateConstructorUsedError;
  String get homeDevicesUserPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateHomeDtosCopyWith<CreateHomeDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateHomeDtosCopyWith<$Res> {
  factory $CreateHomeDtosCopyWith(
          CreateHomeDtos value, $Res Function(CreateHomeDtos) then) =
      _$CreateHomeDtosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(ignore: true) String? name,
      String homeDevicesUserId,
      String homeDevicesUserEmail,
      String homeDevicesUserPassword});
}

/// @nodoc
class _$CreateHomeDtosCopyWithImpl<$Res>
    implements $CreateHomeDtosCopyWith<$Res> {
  _$CreateHomeDtosCopyWithImpl(this._value, this._then);

  final CreateHomeDtos _value;
  // ignore: unused_field
  final $Res Function(CreateHomeDtos) _then;

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
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homeDevicesUserId: homeDevicesUserId == freezed
          ? _value.homeDevicesUserId
          : homeDevicesUserId // ignore: cast_nullable_to_non_nullable
              as String,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateHomeDtosCopyWith<$Res>
    implements $CreateHomeDtosCopyWith<$Res> {
  factory _$CreateHomeDtosCopyWith(
          _CreateHomeDtos value, $Res Function(_CreateHomeDtos) then) =
      __$CreateHomeDtosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(ignore: true) String? name,
      String homeDevicesUserId,
      String homeDevicesUserEmail,
      String homeDevicesUserPassword});
}

/// @nodoc
class __$CreateHomeDtosCopyWithImpl<$Res>
    extends _$CreateHomeDtosCopyWithImpl<$Res>
    implements _$CreateHomeDtosCopyWith<$Res> {
  __$CreateHomeDtosCopyWithImpl(
      _CreateHomeDtos _value, $Res Function(_CreateHomeDtos) _then)
      : super(_value, (v) => _then(v as _CreateHomeDtos));

  @override
  _CreateHomeDtos get _value => super._value as _CreateHomeDtos;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? homeDevicesUserId = freezed,
    Object? homeDevicesUserEmail = freezed,
    Object? homeDevicesUserPassword = freezed,
  }) {
    return _then(_CreateHomeDtos(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homeDevicesUserId: homeDevicesUserId == freezed
          ? _value.homeDevicesUserId
          : homeDevicesUserId // ignore: cast_nullable_to_non_nullable
              as String,
      homeDevicesUserEmail: homeDevicesUserEmail == freezed
          ? _value.homeDevicesUserEmail
          : homeDevicesUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      homeDevicesUserPassword: homeDevicesUserPassword == freezed
          ? _value.homeDevicesUserPassword
          : homeDevicesUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateHomeDtos extends _CreateHomeDtos {
  const _$_CreateHomeDtos(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(ignore: true) this.name,
      required this.homeDevicesUserId,
      required this.homeDevicesUserEmail,
      required this.homeDevicesUserPassword})
      : super._();

  factory _$_CreateHomeDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateHomeDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(ignore: true)
  final String? name;
  @override
  final String homeDevicesUserId;
  @override
  final String homeDevicesUserEmail;
  @override
  final String homeDevicesUserPassword;

  @override
  String toString() {
    return 'CreateHomeDtos(id: $id, name: $name, homeDevicesUserId: $homeDevicesUserId, homeDevicesUserEmail: $homeDevicesUserEmail, homeDevicesUserPassword: $homeDevicesUserPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHomeDtos &&
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
  _$CreateHomeDtosCopyWith<_CreateHomeDtos> get copyWith =>
      __$CreateHomeDtosCopyWithImpl<_CreateHomeDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateHomeDtosToJson(this);
  }
}

abstract class _CreateHomeDtos extends CreateHomeDtos {
  const factory _CreateHomeDtos(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(ignore: true) String? name,
      required String homeDevicesUserId,
      required String homeDevicesUserEmail,
      required String homeDevicesUserPassword}) = _$_CreateHomeDtos;
  const _CreateHomeDtos._() : super._();

  factory _CreateHomeDtos.fromJson(Map<String, dynamic> json) =
      _$_CreateHomeDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get name => throw _privateConstructorUsedError;
  @override
  String get homeDevicesUserId => throw _privateConstructorUsedError;
  @override
  String get homeDevicesUserEmail => throw _privateConstructorUsedError;
  @override
  String get homeDevicesUserPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateHomeDtosCopyWith<_CreateHomeDtos> get copyWith =>
      throw _privateConstructorUsedError;
}
