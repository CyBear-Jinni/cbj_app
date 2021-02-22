// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateHomeTearOff {
  const _$CreateHomeTearOff();

// ignore: unused_element
  _CreateHome call({@required UniqueId id}) {
    return _CreateHome(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHome = _$CreateHomeTearOff();

/// @nodoc
mixin _$CreateHome {
  UniqueId get id;

  @JsonKey(ignore: true)
  $CreateHomeCopyWith<CreateHome> get copyWith;
}

/// @nodoc
abstract class $CreateHomeCopyWith<$Res> {
  factory $CreateHomeCopyWith(
          CreateHome value, $Res Function(CreateHome) then) =
      _$CreateHomeCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$CreateHomeCopyWithImpl<$Res> implements $CreateHomeCopyWith<$Res> {
  _$CreateHomeCopyWithImpl(this._value, this._then);

  final CreateHome _value;
  // ignore: unused_field
  final $Res Function(CreateHome) _then;

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
abstract class _$CreateHomeCopyWith<$Res> implements $CreateHomeCopyWith<$Res> {
  factory _$CreateHomeCopyWith(
          _CreateHome value, $Res Function(_CreateHome) then) =
      __$CreateHomeCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$CreateHomeCopyWithImpl<$Res> extends _$CreateHomeCopyWithImpl<$Res>
    implements _$CreateHomeCopyWith<$Res> {
  __$CreateHomeCopyWithImpl(
      _CreateHome _value, $Res Function(_CreateHome) _then)
      : super(_value, (v) => _then(v as _CreateHome));

  @override
  _CreateHome get _value => super._value as _CreateHome;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_CreateHome(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_CreateHome implements _CreateHome {
  const _$_CreateHome({@required this.id}) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'CreateHome(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHome &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$CreateHomeCopyWith<_CreateHome> get copyWith =>
      __$CreateHomeCopyWithImpl<_CreateHome>(this, _$identity);
}

abstract class _CreateHome implements CreateHome {
  const factory _CreateHome({@required UniqueId id}) = _$_CreateHome;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$CreateHomeCopyWith<_CreateHome> get copyWith;
}
