// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'initialize_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InitializeHomeTearOff {
  const _$InitializeHomeTearOff();

// ignore: unused_element
  _InitialHome call({@required UniqueId id}) {
    return _InitialHome(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeHome = _$InitializeHomeTearOff();

/// @nodoc
mixin _$InitializeHome {
  UniqueId get id;

  @JsonKey(ignore: true)
  $InitializeHomeCopyWith<InitializeHome> get copyWith;
}

/// @nodoc
abstract class $InitializeHomeCopyWith<$Res> {
  factory $InitializeHomeCopyWith(
          InitializeHome value, $Res Function(InitializeHome) then) =
      _$InitializeHomeCopyWithImpl<$Res>;

  $Res call({UniqueId id});
}

/// @nodoc
class _$InitializeHomeCopyWithImpl<$Res>
    implements $InitializeHomeCopyWith<$Res> {
  _$InitializeHomeCopyWithImpl(this._value, this._then);

  final InitializeHome _value;

  // ignore: unused_field
  final $Res Function(InitializeHome) _then;

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
abstract class _$InitialHomeCopyWith<$Res>
    implements $InitializeHomeCopyWith<$Res> {
  factory _$InitialHomeCopyWith(
          _InitialHome value, $Res Function(_InitialHome) then) =
      __$InitialHomeCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$InitialHomeCopyWithImpl<$Res>
    extends _$InitializeHomeCopyWithImpl<$Res>
    implements _$InitialHomeCopyWith<$Res> {
  __$InitialHomeCopyWithImpl(
      _InitialHome _value, $Res Function(_InitialHome) _then)
      : super(_value, (v) => _then(v as _InitialHome));

  @override
  _InitialHome get _value => super._value as _InitialHome;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_InitialHome(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_InitialHome implements _InitialHome {
  const _$_InitialHome({@required this.id}) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'InitializeHome(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialHome &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$InitialHomeCopyWith<_InitialHome> get copyWith =>
      __$InitialHomeCopyWithImpl<_InitialHome>(this, _$identity);
}

abstract class _InitialHome implements InitializeHome {
  const factory _InitialHome({@required UniqueId id}) = _$_InitialHome;

  @override
  UniqueId get id;

  @override
  @JsonKey(ignore: true)
  _$InitialHomeCopyWith<_InitialHome> get copyWith;
}
