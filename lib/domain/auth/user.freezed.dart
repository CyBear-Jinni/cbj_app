// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MUserTearOff {
  const _$MUserTearOff();

// ignore: unused_element
  _MUser call({@required UniqueId id}) {
    return _MUser(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MUser = _$MUserTearOff();

/// @nodoc
mixin _$MUser {
  UniqueId get id;

  @JsonKey(ignore: true)
  $MUserCopyWith<MUser> get copyWith;
}

/// @nodoc
abstract class $MUserCopyWith<$Res> {
  factory $MUserCopyWith(MUser value, $Res Function(MUser) then) =
      _$MUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$MUserCopyWithImpl<$Res> implements $MUserCopyWith<$Res> {
  _$MUserCopyWithImpl(this._value, this._then);

  final MUser _value;
  // ignore: unused_field
  final $Res Function(MUser) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$MUserCopyWith<$Res> implements $MUserCopyWith<$Res> {
  factory _$MUserCopyWith(_MUser value, $Res Function(_MUser) then) =
      __$MUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$MUserCopyWithImpl<$Res> extends _$MUserCopyWithImpl<$Res>
    implements _$MUserCopyWith<$Res> {
  __$MUserCopyWithImpl(_MUser _value, $Res Function(_MUser) _then)
      : super(_value, (v) => _then(v as _MUser));

  @override
  _MUser get _value => super._value as _MUser;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_MUser(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_MUser implements _MUser {
  const _$_MUser({@required this.id}) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'MUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MUserCopyWith<_MUser> get copyWith =>
      __$MUserCopyWithImpl<_MUser>(this, _$identity);
}

abstract class _MUser implements MUser {
  const factory _MUser({@required UniqueId id}) = _$_MUser;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$MUserCopyWith<_MUser> get copyWith;
}
