// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'all_homes_of_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllHomesOfUserDtos _$AllHomesOfUserDtosFromJson(Map<String, dynamic> json) {
  return _AllHomesOfUserDtos.fromJson(json);
}

/// @nodoc
class _$AllHomesOfUserDtosTearOff {
  const _$AllHomesOfUserDtosTearOff();

  _AllHomesOfUserDtos call(
      {@JsonKey(ignore: true) String? id, required String name}) {
    return _AllHomesOfUserDtos(
      id: id,
      name: name,
    );
  }

  AllHomesOfUserDtos fromJson(Map<String, Object> json) {
    return AllHomesOfUserDtos.fromJson(json);
  }
}

/// @nodoc
const $AllHomesOfUserDtos = _$AllHomesOfUserDtosTearOff();

/// @nodoc
mixin _$AllHomesOfUserDtos {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllHomesOfUserDtosCopyWith<AllHomesOfUserDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllHomesOfUserDtosCopyWith<$Res> {
  factory $AllHomesOfUserDtosCopyWith(
          AllHomesOfUserDtos value, $Res Function(AllHomesOfUserDtos) then) =
      _$AllHomesOfUserDtosCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, String name});
}

/// @nodoc
class _$AllHomesOfUserDtosCopyWithImpl<$Res>
    implements $AllHomesOfUserDtosCopyWith<$Res> {
  _$AllHomesOfUserDtosCopyWithImpl(this._value, this._then);

  final AllHomesOfUserDtos _value;
  // ignore: unused_field
  final $Res Function(AllHomesOfUserDtos) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AllHomesOfUserDtosCopyWith<$Res>
    implements $AllHomesOfUserDtosCopyWith<$Res> {
  factory _$AllHomesOfUserDtosCopyWith(
          _AllHomesOfUserDtos value, $Res Function(_AllHomesOfUserDtos) then) =
      __$AllHomesOfUserDtosCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, String name});
}

/// @nodoc
class __$AllHomesOfUserDtosCopyWithImpl<$Res>
    extends _$AllHomesOfUserDtosCopyWithImpl<$Res>
    implements _$AllHomesOfUserDtosCopyWith<$Res> {
  __$AllHomesOfUserDtosCopyWithImpl(
      _AllHomesOfUserDtos _value, $Res Function(_AllHomesOfUserDtos) _then)
      : super(_value, (v) => _then(v as _AllHomesOfUserDtos));

  @override
  _AllHomesOfUserDtos get _value => super._value as _AllHomesOfUserDtos;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_AllHomesOfUserDtos(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllHomesOfUserDtos extends _AllHomesOfUserDtos {
  const _$_AllHomesOfUserDtos(
      {@JsonKey(ignore: true) this.id, required this.name})
      : super._();

  factory _$_AllHomesOfUserDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_AllHomesOfUserDtosFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'AllHomesOfUserDtos(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllHomesOfUserDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AllHomesOfUserDtosCopyWith<_AllHomesOfUserDtos> get copyWith =>
      __$AllHomesOfUserDtosCopyWithImpl<_AllHomesOfUserDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AllHomesOfUserDtosToJson(this);
  }
}

abstract class _AllHomesOfUserDtos extends AllHomesOfUserDtos {
  const factory _AllHomesOfUserDtos(
      {@JsonKey(ignore: true) String? id,
      required String name}) = _$_AllHomesOfUserDtos;
  const _AllHomesOfUserDtos._() : super._();

  factory _AllHomesOfUserDtos.fromJson(Map<String, dynamic> json) =
      _$_AllHomesOfUserDtos.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllHomesOfUserDtosCopyWith<_AllHomesOfUserDtos> get copyWith =>
      throw _privateConstructorUsedError;
}
