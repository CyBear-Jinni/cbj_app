// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scenes_in_folders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ScenesInFoldersEventTearOff {
  const _$ScenesInFoldersEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }
}

/// @nodoc
// ignore: unused_element
const $ScenesInFoldersEvent = _$ScenesInFoldersEventTearOff();

/// @nodoc
mixin _$ScenesInFoldersEvent {
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
abstract class $ScenesInFoldersEventCopyWith<$Res> {
  factory $ScenesInFoldersEventCopyWith(ScenesInFoldersEvent value,
          $Res Function(ScenesInFoldersEvent) then) =
      _$ScenesInFoldersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScenesInFoldersEventCopyWithImpl<$Res>
    implements $ScenesInFoldersEventCopyWith<$Res> {
  _$ScenesInFoldersEventCopyWithImpl(this._value, this._then);

  final ScenesInFoldersEvent _value;
  // ignore: unused_field
  final $Res Function(ScenesInFoldersEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ScenesInFoldersEventCopyWithImpl<$Res>
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
    return 'ScenesInFoldersEvent.initialized()';
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

abstract class Initialized implements ScenesInFoldersEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
class _$ScenesInFoldersStateTearOff {
  const _$ScenesInFoldersStateTearOff();

// ignore: unused_element
  _ScenesInFoldersState call(
      {@required
          Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _ScenesInFoldersState(
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded(ScenesInFolders scenesFolders) {
    return Loaded(
      scenesFolders,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $ScenesInFoldersState = _$ScenesInFoldersStateTearOff();

/// @nodoc
mixin _$ScenesInFoldersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(ScenesInFolders scenesFolders),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(ScenesInFolders scenesFolders),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ScenesInFoldersState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_ScenesInFoldersState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ScenesInFoldersStateCopyWith<$Res> {
  factory $ScenesInFoldersStateCopyWith(ScenesInFoldersState value,
          $Res Function(ScenesInFoldersState) then) =
      _$ScenesInFoldersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScenesInFoldersStateCopyWithImpl<$Res>
    implements $ScenesInFoldersStateCopyWith<$Res> {
  _$ScenesInFoldersStateCopyWithImpl(this._value, this._then);

  final ScenesInFoldersState _value;
  // ignore: unused_field
  final $Res Function(ScenesInFoldersState) _then;
}

/// @nodoc
abstract class _$ScenesInFoldersStateCopyWith<$Res> {
  factory _$ScenesInFoldersStateCopyWith(_ScenesInFoldersState value,
          $Res Function(_ScenesInFoldersState) then) =
      __$ScenesInFoldersStateCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$ScenesInFoldersStateCopyWithImpl<$Res>
    extends _$ScenesInFoldersStateCopyWithImpl<$Res>
    implements _$ScenesInFoldersStateCopyWith<$Res> {
  __$ScenesInFoldersStateCopyWithImpl(
      _ScenesInFoldersState _value, $Res Function(_ScenesInFoldersState) _then)
      : super(_value, (v) => _then(v as _ScenesInFoldersState));

  @override
  _ScenesInFoldersState get _value => super._value as _ScenesInFoldersState;

  @override
  $Res call({
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_ScenesInFoldersState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ScenesInFoldersState implements _ScenesInFoldersState {
  const _$_ScenesInFoldersState({@required this.authFailureOrSuccessOption})
      : assert(authFailureOrSuccessOption != null);

  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ScenesInFoldersState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScenesInFoldersState &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ScenesInFoldersStateCopyWith<_ScenesInFoldersState> get copyWith =>
      __$ScenesInFoldersStateCopyWithImpl<_ScenesInFoldersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(ScenesInFolders scenesFolders),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return $default(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(ScenesInFolders scenesFolders),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ScenesInFoldersState value), {
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
    TResult $default(_ScenesInFoldersState value), {
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

abstract class _ScenesInFoldersState implements ScenesInFoldersState {
  const factory _ScenesInFoldersState(
          {@required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_ScenesInFoldersState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$ScenesInFoldersStateCopyWith<_ScenesInFoldersState> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$ScenesInFoldersStateCopyWithImpl<$Res>
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
    return 'ScenesInFoldersState.loading()';
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
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(ScenesInFolders scenesFolders),
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
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(ScenesInFolders scenesFolders),
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
    TResult $default(_ScenesInFoldersState value), {
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
    TResult $default(_ScenesInFoldersState value), {
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

abstract class Loading implements ScenesInFoldersState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({ScenesInFolders scenesFolders});

  $ScenesInFoldersCopyWith<$Res> get scenesFolders;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$ScenesInFoldersStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object scenesFolders = freezed,
  }) {
    return _then(Loaded(
      scenesFolders == freezed
          ? _value.scenesFolders
          : scenesFolders as ScenesInFolders,
    ));
  }

  @override
  $ScenesInFoldersCopyWith<$Res> get scenesFolders {
    if (_value.scenesFolders == null) {
      return null;
    }
    return $ScenesInFoldersCopyWith<$Res>(_value.scenesFolders, (value) {
      return _then(_value.copyWith(scenesFolders: value));
    });
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.scenesFolders) : assert(scenesFolders != null);

  @override
  final ScenesInFolders scenesFolders;

  @override
  String toString() {
    return 'ScenesInFoldersState.loaded(scenesFolders: $scenesFolders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.scenesFolders, scenesFolders) ||
                const DeepCollectionEquality()
                    .equals(other.scenesFolders, scenesFolders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scenesFolders);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(ScenesInFolders scenesFolders),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(scenesFolders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(ScenesInFolders scenesFolders),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(scenesFolders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ScenesInFoldersState value), {
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
    TResult $default(_ScenesInFoldersState value), {
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

abstract class Loaded implements ScenesInFoldersState {
  const factory Loaded(ScenesInFolders scenesFolders) = _$Loaded;

  ScenesInFolders get scenesFolders;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ScenesInFoldersStateCopyWithImpl<$Res>
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
    return 'ScenesInFoldersState.error()';
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
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(ScenesInFolders scenesFolders),
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
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(ScenesInFolders scenesFolders),
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
    TResult $default(_ScenesInFoldersState value), {
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
    TResult $default(_ScenesInFoldersState value), {
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

abstract class Error implements ScenesInFoldersState {
  const factory Error() = _$Error;
}
