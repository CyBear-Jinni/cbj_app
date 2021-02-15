// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'folder_of_scenes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FolderOfScenesEventTearOff {
  const _$FolderOfScenesEventTearOff();

// ignore: unused_element
  Initialized initialized(FolderOfScenes folderOfScenes) {
    return Initialized(
      folderOfScenes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FolderOfScenesEvent = _$FolderOfScenesEventTearOff();

/// @nodoc
mixin _$FolderOfScenesEvent {
  FolderOfScenes get folderOfScenes;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(FolderOfScenes folderOfScenes),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(FolderOfScenes folderOfScenes),
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

  @JsonKey(ignore: true)
  $FolderOfScenesEventCopyWith<FolderOfScenesEvent> get copyWith;
}

/// @nodoc
abstract class $FolderOfScenesEventCopyWith<$Res> {
  factory $FolderOfScenesEventCopyWith(
          FolderOfScenesEvent value, $Res Function(FolderOfScenesEvent) then) =
      _$FolderOfScenesEventCopyWithImpl<$Res>;
  $Res call({FolderOfScenes folderOfScenes});

  $FolderOfScenesCopyWith<$Res> get folderOfScenes;
}

/// @nodoc
class _$FolderOfScenesEventCopyWithImpl<$Res>
    implements $FolderOfScenesEventCopyWith<$Res> {
  _$FolderOfScenesEventCopyWithImpl(this._value, this._then);

  final FolderOfScenesEvent _value;
  // ignore: unused_field
  final $Res Function(FolderOfScenesEvent) _then;

  @override
  $Res call({
    Object folderOfScenes = freezed,
  }) {
    return _then(_value.copyWith(
      folderOfScenes: folderOfScenes == freezed
          ? _value.folderOfScenes
          : folderOfScenes as FolderOfScenes,
    ));
  }

  @override
  $FolderOfScenesCopyWith<$Res> get folderOfScenes {
    if (_value.folderOfScenes == null) {
      return null;
    }
    return $FolderOfScenesCopyWith<$Res>(_value.folderOfScenes, (value) {
      return _then(_value.copyWith(folderOfScenes: value));
    });
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res>
    implements $FolderOfScenesEventCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({FolderOfScenes folderOfScenes});

  @override
  $FolderOfScenesCopyWith<$Res> get folderOfScenes;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$FolderOfScenesEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object folderOfScenes = freezed,
  }) {
    return _then(Initialized(
      folderOfScenes == freezed
          ? _value.folderOfScenes
          : folderOfScenes as FolderOfScenes,
    ));
  }
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized(this.folderOfScenes) : assert(folderOfScenes != null);

  @override
  final FolderOfScenes folderOfScenes;

  @override
  String toString() {
    return 'FolderOfScenesEvent.initialized(folderOfScenes: $folderOfScenes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.folderOfScenes, folderOfScenes) ||
                const DeepCollectionEquality()
                    .equals(other.folderOfScenes, folderOfScenes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(folderOfScenes);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(FolderOfScenes folderOfScenes),
  }) {
    assert(initialized != null);
    return initialized(folderOfScenes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(FolderOfScenes folderOfScenes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(folderOfScenes);
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

abstract class Initialized implements FolderOfScenesEvent {
  const factory Initialized(FolderOfScenes folderOfScenes) = _$Initialized;

  @override
  FolderOfScenes get folderOfScenes;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith;
}

/// @nodoc
class _$FolderOfScenesStateTearOff {
  const _$FolderOfScenesStateTearOff();

// ignore: unused_element
  _FolderOfScenesState call() {
    return const _FolderOfScenesState();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({@required KtList<Either<SceneFailure, Scene>> scenesList}) {
    return Loaded(
      scenesList: scenesList,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $FolderOfScenesState = _$FolderOfScenesStateTearOff();

/// @nodoc
mixin _$FolderOfScenesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_FolderOfScenesState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_FolderOfScenesState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FolderOfScenesStateCopyWith<$Res> {
  factory $FolderOfScenesStateCopyWith(
          FolderOfScenesState value, $Res Function(FolderOfScenesState) then) =
      _$FolderOfScenesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderOfScenesStateCopyWithImpl<$Res>
    implements $FolderOfScenesStateCopyWith<$Res> {
  _$FolderOfScenesStateCopyWithImpl(this._value, this._then);

  final FolderOfScenesState _value;
  // ignore: unused_field
  final $Res Function(FolderOfScenesState) _then;
}

/// @nodoc
abstract class _$FolderOfScenesStateCopyWith<$Res> {
  factory _$FolderOfScenesStateCopyWith(_FolderOfScenesState value,
          $Res Function(_FolderOfScenesState) then) =
      __$FolderOfScenesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FolderOfScenesStateCopyWithImpl<$Res>
    extends _$FolderOfScenesStateCopyWithImpl<$Res>
    implements _$FolderOfScenesStateCopyWith<$Res> {
  __$FolderOfScenesStateCopyWithImpl(
      _FolderOfScenesState _value, $Res Function(_FolderOfScenesState) _then)
      : super(_value, (v) => _then(v as _FolderOfScenesState));

  @override
  _FolderOfScenesState get _value => super._value as _FolderOfScenesState;
}

/// @nodoc
class _$_FolderOfScenesState implements _FolderOfScenesState {
  const _$_FolderOfScenesState();

  @override
  String toString() {
    return 'FolderOfScenesState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FolderOfScenesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult $default(_FolderOfScenesState value), {
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
    TResult $default(_FolderOfScenesState value), {
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

abstract class _FolderOfScenesState implements FolderOfScenesState {
  const factory _FolderOfScenesState() = _$_FolderOfScenesState;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$FolderOfScenesStateCopyWithImpl<$Res>
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
    return 'FolderOfScenesState.loading()';
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
    @required TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult $default(_FolderOfScenesState value), {
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
    TResult $default(_FolderOfScenesState value), {
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

abstract class Loading implements FolderOfScenesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<Either<SceneFailure, Scene>> scenesList});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$FolderOfScenesStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object scenesList = freezed,
  }) {
    return _then(Loaded(
      scenesList: scenesList == freezed
          ? _value.scenesList
          : scenesList as KtList<Either<SceneFailure, Scene>>,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({@required this.scenesList}) : assert(scenesList != null);

  @override
  final KtList<Either<SceneFailure, Scene>> scenesList;

  @override
  String toString() {
    return 'FolderOfScenesState.loaded(scenesList: $scenesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.scenesList, scenesList) ||
                const DeepCollectionEquality()
                    .equals(other.scenesList, scenesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scenesList);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loading(),
    @required TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(scenesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loading(),
    TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(scenesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_FolderOfScenesState value), {
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
    TResult $default(_FolderOfScenesState value), {
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

abstract class Loaded implements FolderOfScenesState {
  const factory Loaded(
      {@required KtList<Either<SceneFailure, Scene>> scenesList}) = _$Loaded;

  KtList<Either<SceneFailure, Scene>> get scenesList;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$FolderOfScenesStateCopyWithImpl<$Res>
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
    return 'FolderOfScenesState.error()';
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
    @required TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult loaded(KtList<Either<SceneFailure, Scene>> scenesList),
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
    TResult $default(_FolderOfScenesState value), {
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
    TResult $default(_FolderOfScenesState value), {
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

abstract class Error implements FolderOfScenesState {
  const factory Error() = _$Error;
}
