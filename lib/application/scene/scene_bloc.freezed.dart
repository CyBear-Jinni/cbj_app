// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scene_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SceneEventTearOff {
  const _$SceneEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }
}

/// @nodoc
// ignore: unused_element
const $SceneEvent = _$SceneEventTearOff();

/// @nodoc
mixin _$SceneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SceneEventCopyWith<$Res> {
  factory $SceneEventCopyWith(
          SceneEvent value, $Res Function(SceneEvent) then) =
      _$SceneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SceneEventCopyWithImpl<$Res> implements $SceneEventCopyWith<$Res> {
  _$SceneEventCopyWithImpl(this._value, this._then);

  final SceneEvent _value;

  // ignore: unused_field
  final $Res Function(SceneEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$SceneEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'SceneEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
  }) {
    assert(initialized != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
  }) {
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements SceneEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
class _$SceneStateTearOff {
  const _$SceneStateTearOff();

// ignore: unused_element
  _SceneState call() {
    return const _SceneState();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded(Scene scene) {
    return Loaded(
      scene,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $SceneState = _$SceneStateTearOff();

/// @nodoc
mixin _$SceneState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(Scene scene),
    @required TResult error(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(Scene scene),
    TResult error(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_SceneState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_SceneState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(Scene scene),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(Scene scene),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_SceneState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_SceneState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SceneState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(Scene scene),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(Scene scene),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_SceneState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_SceneState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SceneState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;

  $Res call({Scene scene});

  $SceneCopyWith<$Res> get scene;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object scene = freezed,
  }) {
    return _then(Loaded(
      scene == freezed ? _value.scene : scene as Scene,
    ));
  }

  @override
  $SceneCopyWith<$Res> get scene {
    if (_value.scene == null) {
      return null;
    }
    return $SceneCopyWith<$Res>(_value.scene, (value) {
      return _then(_value.copyWith(scene: value));
    });
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.scene) : assert(scene != null);

  @override
  final Scene scene;

  @override
  String toString() {
    return 'SceneState.loaded(scene: $scene)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.scene, scene) ||
                const DeepCollectionEquality().equals(other.scene, scene)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scene);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(Scene scene),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(scene);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(Scene scene),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(scene);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_SceneState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_SceneState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SceneState {
  const factory Loaded(Scene scene) = _$Loaded;

  Scene get scene;

  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
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
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(Scene scene),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(Scene scene),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_SceneState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_SceneState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SceneState {
  const factory Error() = _$Error;
}
