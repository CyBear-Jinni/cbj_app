// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scene_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SceneEventTearOff {
  const _$SceneEventTearOff();

  _Initialized initialized({required Scene scene}) {
    return _Initialized(
      scene: scene,
    );
  }
}

/// @nodoc
const $SceneEvent = _$SceneEventTearOff();

/// @nodoc
mixin _$SceneEvent {
  Scene get scene => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Scene scene) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Scene scene)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SceneEventCopyWith<SceneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneEventCopyWith<$Res> {
  factory $SceneEventCopyWith(
          SceneEvent value, $Res Function(SceneEvent) then) =
      _$SceneEventCopyWithImpl<$Res>;
  $Res call({Scene scene});

  $SceneCopyWith<$Res> get scene;
}

/// @nodoc
class _$SceneEventCopyWithImpl<$Res> implements $SceneEventCopyWith<$Res> {
  _$SceneEventCopyWithImpl(this._value, this._then);

  final SceneEvent _value;
  // ignore: unused_field
  final $Res Function(SceneEvent) _then;

  @override
  $Res call({
    Object? scene = freezed,
  }) {
    return _then(_value.copyWith(
      scene: scene == freezed
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as Scene,
    ));
  }

  @override
  $SceneCopyWith<$Res> get scene {
    return $SceneCopyWith<$Res>(_value.scene, (value) {
      return _then(_value.copyWith(scene: value));
    });
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $SceneEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Scene scene});

  @override
  $SceneCopyWith<$Res> get scene;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$SceneEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? scene = freezed,
  }) {
    return _then(_Initialized(
      scene: scene == freezed
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as Scene,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({required this.scene});

  @override
  final Scene scene;

  @override
  String toString() {
    return 'SceneEvent.initialized(scene: $scene)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.scene, scene) ||
                const DeepCollectionEquality().equals(other.scene, scene)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scene);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Scene scene) initialized,
  }) {
    return initialized(scene);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Scene scene)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(scene);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SceneEvent {
  const factory _Initialized({required Scene scene}) = _$_Initialized;

  @override
  Scene get scene => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SceneStateTearOff {
  const _$SceneStateTearOff();

  _SceneState call() {
    return const _SceneState();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(Scene scene) {
    return _Loaded(
      scene,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $SceneState = _$SceneStateTearOff();

/// @nodoc
mixin _$SceneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Scene scene) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Scene scene)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SceneState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SceneState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneStateCopyWith<$Res> {
  factory $SceneStateCopyWith(
          SceneState value, $Res Function(SceneState) then) =
      _$SceneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SceneStateCopyWithImpl<$Res> implements $SceneStateCopyWith<$Res> {
  _$SceneStateCopyWithImpl(this._value, this._then);

  final SceneState _value;
  // ignore: unused_field
  final $Res Function(SceneState) _then;
}

/// @nodoc
abstract class _$SceneStateCopyWith<$Res> {
  factory _$SceneStateCopyWith(
          _SceneState value, $Res Function(_SceneState) then) =
      __$SceneStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SceneStateCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements _$SceneStateCopyWith<$Res> {
  __$SceneStateCopyWithImpl(
      _SceneState _value, $Res Function(_SceneState) _then)
      : super(_value, (v) => _then(v as _SceneState));

  @override
  _SceneState get _value => super._value as _SceneState;
}

/// @nodoc

class _$_SceneState implements _SceneState {
  const _$_SceneState();

  @override
  String toString() {
    return 'SceneState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SceneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Scene scene) loaded,
    required TResult Function() error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Scene scene)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SceneState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SceneState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SceneState implements SceneState {
  const factory _SceneState() = _$_SceneState;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SceneState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Scene scene) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Scene scene)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SceneState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SceneState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SceneState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Scene scene});

  $SceneCopyWith<$Res> get scene;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? scene = freezed,
  }) {
    return _then(_Loaded(
      scene == freezed
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as Scene,
    ));
  }

  @override
  $SceneCopyWith<$Res> get scene {
    return $SceneCopyWith<$Res>(_value.scene, (value) {
      return _then(_value.copyWith(scene: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.scene);

  @override
  final Scene scene;

  @override
  String toString() {
    return 'SceneState.loaded(scene: $scene)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.scene, scene) ||
                const DeepCollectionEquality().equals(other.scene, scene)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scene);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Scene scene) loaded,
    required TResult Function() error,
  }) {
    return loaded(scene);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Scene scene)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(scene);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SceneState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SceneState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SceneState {
  const factory _Loaded(Scene scene) = _$_Loaded;

  Scene get scene => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'SceneState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(Scene scene) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(Scene scene)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SceneState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SceneState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SceneState {
  const factory Error() = _$Error;
}
