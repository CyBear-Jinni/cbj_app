// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeUserEntityTearOff {
  const _$HomeUserEntityTearOff();

// ignore: unused_element
  _HomeUserEntity call(
      {@required HomeUserUniqueId id,
      @required HomeUserEmail email,
      @required HomeUserName name}) {
    return _HomeUserEntity(
      id: id,
      email: email,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeUserEntity = _$HomeUserEntityTearOff();

/// @nodoc
mixin _$HomeUserEntity {
  HomeUserUniqueId get id;
  HomeUserEmail get email;
  HomeUserName get name;

  @JsonKey(ignore: true)
  $HomeUserEntityCopyWith<HomeUserEntity> get copyWith;
}

/// @nodoc
abstract class $HomeUserEntityCopyWith<$Res> {
  factory $HomeUserEntityCopyWith(
          HomeUserEntity value, $Res Function(HomeUserEntity) then) =
      _$HomeUserEntityCopyWithImpl<$Res>;
  $Res call({HomeUserUniqueId id, HomeUserEmail email, HomeUserName name});
}

/// @nodoc
class _$HomeUserEntityCopyWithImpl<$Res>
    implements $HomeUserEntityCopyWith<$Res> {
  _$HomeUserEntityCopyWithImpl(this._value, this._then);

  final HomeUserEntity _value;
  // ignore: unused_field
  final $Res Function(HomeUserEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as HomeUserUniqueId,
      email: email == freezed ? _value.email : email as HomeUserEmail,
      name: name == freezed ? _value.name : name as HomeUserName,
    ));
  }
}

/// @nodoc
abstract class _$HomeUserEntityCopyWith<$Res>
    implements $HomeUserEntityCopyWith<$Res> {
  factory _$HomeUserEntityCopyWith(
          _HomeUserEntity value, $Res Function(_HomeUserEntity) then) =
      __$HomeUserEntityCopyWithImpl<$Res>;
  @override
  $Res call({HomeUserUniqueId id, HomeUserEmail email, HomeUserName name});
}

/// @nodoc
class __$HomeUserEntityCopyWithImpl<$Res>
    extends _$HomeUserEntityCopyWithImpl<$Res>
    implements _$HomeUserEntityCopyWith<$Res> {
  __$HomeUserEntityCopyWithImpl(
      _HomeUserEntity _value, $Res Function(_HomeUserEntity) _then)
      : super(_value, (v) => _then(v as _HomeUserEntity));

  @override
  _HomeUserEntity get _value => super._value as _HomeUserEntity;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_HomeUserEntity(
      id: id == freezed ? _value.id : id as HomeUserUniqueId,
      email: email == freezed ? _value.email : email as HomeUserEmail,
      name: name == freezed ? _value.name : name as HomeUserName,
    ));
  }
}

/// @nodoc
class _$_HomeUserEntity extends _HomeUserEntity {
  const _$_HomeUserEntity(
      {@required this.id, @required this.email, @required this.name})
      : assert(id != null),
        assert(email != null),
        assert(name != null),
        super._();

  @override
  final HomeUserUniqueId id;
  @override
  final HomeUserEmail email;
  @override
  final HomeUserName name;

  @override
  String toString() {
    return 'HomeUserEntity(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeUserEntity &&
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
  _$HomeUserEntityCopyWith<_HomeUserEntity> get copyWith =>
      __$HomeUserEntityCopyWithImpl<_HomeUserEntity>(this, _$identity);
}

abstract class _HomeUserEntity extends HomeUserEntity {
  const _HomeUserEntity._() : super._();
  const factory _HomeUserEntity(
      {@required HomeUserUniqueId id,
      @required HomeUserEmail email,
      @required HomeUserName name}) = _$_HomeUserEntity;

  @override
  HomeUserUniqueId get id;
  @override
  HomeUserEmail get email;
  @override
  HomeUserName get name;
  @override
  @JsonKey(ignore: true)
  _$HomeUserEntityCopyWith<_HomeUserEntity> get copyWith;
}
