// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'all_homes_of_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllHomesOfUserEntityTearOff {
  const _$AllHomesOfUserEntityTearOff();

  _AllHomesOfUserEntity call(
      {required AllHomesOfUserUniqueId? id,
      required AllHomesOfUserName? name}) {
    return _AllHomesOfUserEntity(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $AllHomesOfUserEntity = _$AllHomesOfUserEntityTearOff();

/// @nodoc
mixin _$AllHomesOfUserEntity {
  AllHomesOfUserUniqueId? get id => throw _privateConstructorUsedError;
  AllHomesOfUserName? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllHomesOfUserEntityCopyWith<AllHomesOfUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllHomesOfUserEntityCopyWith<$Res> {
  factory $AllHomesOfUserEntityCopyWith(AllHomesOfUserEntity value,
          $Res Function(AllHomesOfUserEntity) then) =
      _$AllHomesOfUserEntityCopyWithImpl<$Res>;
  $Res call({AllHomesOfUserUniqueId? id, AllHomesOfUserName? name});
}

/// @nodoc
class _$AllHomesOfUserEntityCopyWithImpl<$Res>
    implements $AllHomesOfUserEntityCopyWith<$Res> {
  _$AllHomesOfUserEntityCopyWithImpl(this._value, this._then);

  final AllHomesOfUserEntity _value;
  // ignore: unused_field
  final $Res Function(AllHomesOfUserEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserUniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserName?,
    ));
  }
}

/// @nodoc
abstract class _$AllHomesOfUserEntityCopyWith<$Res>
    implements $AllHomesOfUserEntityCopyWith<$Res> {
  factory _$AllHomesOfUserEntityCopyWith(_AllHomesOfUserEntity value,
          $Res Function(_AllHomesOfUserEntity) then) =
      __$AllHomesOfUserEntityCopyWithImpl<$Res>;
  @override
  $Res call({AllHomesOfUserUniqueId? id, AllHomesOfUserName? name});
}

/// @nodoc
class __$AllHomesOfUserEntityCopyWithImpl<$Res>
    extends _$AllHomesOfUserEntityCopyWithImpl<$Res>
    implements _$AllHomesOfUserEntityCopyWith<$Res> {
  __$AllHomesOfUserEntityCopyWithImpl(
      _AllHomesOfUserEntity _value, $Res Function(_AllHomesOfUserEntity) _then)
      : super(_value, (v) => _then(v as _AllHomesOfUserEntity));

  @override
  _AllHomesOfUserEntity get _value => super._value as _AllHomesOfUserEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_AllHomesOfUserEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserUniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserName?,
    ));
  }
}

/// @nodoc

class _$_AllHomesOfUserEntity extends _AllHomesOfUserEntity {
  const _$_AllHomesOfUserEntity({required this.id, required this.name})
      : super._();

  @override
  final AllHomesOfUserUniqueId? id;
  @override
  final AllHomesOfUserName? name;

  @override
  String toString() {
    return 'AllHomesOfUserEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllHomesOfUserEntity &&
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
  _$AllHomesOfUserEntityCopyWith<_AllHomesOfUserEntity> get copyWith =>
      __$AllHomesOfUserEntityCopyWithImpl<_AllHomesOfUserEntity>(
          this, _$identity);
}

abstract class _AllHomesOfUserEntity extends AllHomesOfUserEntity {
  const factory _AllHomesOfUserEntity(
      {required AllHomesOfUserUniqueId? id,
      required AllHomesOfUserName? name}) = _$_AllHomesOfUserEntity;
  const _AllHomesOfUserEntity._() : super._();

  @override
  AllHomesOfUserUniqueId? get id => throw _privateConstructorUsedError;
  @override
  AllHomesOfUserName? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllHomesOfUserEntityCopyWith<_AllHomesOfUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
