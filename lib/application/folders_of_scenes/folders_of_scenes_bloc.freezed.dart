// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'folders_of_scenes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FoldersOfScenesEventTearOff {
  const _$FoldersOfScenesEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }
}

/// @nodoc
const $FoldersOfScenesEvent = _$FoldersOfScenesEventTearOff();

/// @nodoc
mixin _$FoldersOfScenesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldersOfScenesEventCopyWith<$Res> {
  factory $FoldersOfScenesEventCopyWith(FoldersOfScenesEvent value,
          $Res Function(FoldersOfScenesEvent) then) =
      _$FoldersOfScenesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersOfScenesEventCopyWithImpl<$Res>
    implements $FoldersOfScenesEventCopyWith<$Res> {
  _$FoldersOfScenesEventCopyWithImpl(this._value, this._then);

  final FoldersOfScenesEvent _value;
  // ignore: unused_field
  final $Res Function(FoldersOfScenesEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$FoldersOfScenesEventCopyWithImpl<$Res>
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
    return 'FoldersOfScenesEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements FoldersOfScenesEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
class _$FoldersOfScenesStateTearOff {
  const _$FoldersOfScenesStateTearOff();

  _FoldersOfScenesState call(
      {required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _FoldersOfScenesState(
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(FoldersOfScenes foldersOfScenes) {
    return Loaded(
      foldersOfScenes,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $FoldersOfScenesState = _$FoldersOfScenesStateTearOff();

/// @nodoc
mixin _$FoldersOfScenesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function(FoldersOfScenes foldersOfScenes) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function(FoldersOfScenes foldersOfScenes)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldersOfScenesStateCopyWith<$Res> {
  factory $FoldersOfScenesStateCopyWith(FoldersOfScenesState value,
          $Res Function(FoldersOfScenesState) then) =
      _$FoldersOfScenesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersOfScenesStateCopyWithImpl<$Res>
    implements $FoldersOfScenesStateCopyWith<$Res> {
  _$FoldersOfScenesStateCopyWithImpl(this._value, this._then);

  final FoldersOfScenesState _value;
  // ignore: unused_field
  final $Res Function(FoldersOfScenesState) _then;
}

/// @nodoc
abstract class _$FoldersOfScenesStateCopyWith<$Res> {
  factory _$FoldersOfScenesStateCopyWith(_FoldersOfScenesState value,
          $Res Function(_FoldersOfScenesState) then) =
      __$FoldersOfScenesStateCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$FoldersOfScenesStateCopyWithImpl<$Res>
    extends _$FoldersOfScenesStateCopyWithImpl<$Res>
    implements _$FoldersOfScenesStateCopyWith<$Res> {
  __$FoldersOfScenesStateCopyWithImpl(
      _FoldersOfScenesState _value, $Res Function(_FoldersOfScenesState) _then)
      : super(_value, (v) => _then(v as _FoldersOfScenesState));

  @override
  _FoldersOfScenesState get _value => super._value as _FoldersOfScenesState;

  @override
  $Res call({
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_FoldersOfScenesState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_FoldersOfScenesState implements _FoldersOfScenesState {
  const _$_FoldersOfScenesState({required this.authFailureOrSuccessOption});

  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'FoldersOfScenesState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoldersOfScenesState &&
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
  _$FoldersOfScenesStateCopyWith<_FoldersOfScenesState> get copyWith =>
      __$FoldersOfScenesStateCopyWithImpl<_FoldersOfScenesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function(FoldersOfScenes foldersOfScenes) loaded,
    required TResult Function() error,
  }) {
    return $default(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function(FoldersOfScenes foldersOfScenes)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FoldersOfScenesState implements FoldersOfScenesState {
  const factory _FoldersOfScenesState(
      {required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_FoldersOfScenesState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FoldersOfScenesStateCopyWith<_FoldersOfScenesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$FoldersOfScenesStateCopyWithImpl<$Res>
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
    return 'FoldersOfScenesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function(FoldersOfScenes foldersOfScenes) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function(FoldersOfScenes foldersOfScenes)? loaded,
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
    TResult Function(_FoldersOfScenesState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FoldersOfScenesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({FoldersOfScenes foldersOfScenes});

  $FoldersOfScenesCopyWith<$Res> get foldersOfScenes;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$FoldersOfScenesStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? foldersOfScenes = freezed,
  }) {
    return _then(Loaded(
      foldersOfScenes == freezed
          ? _value.foldersOfScenes
          : foldersOfScenes // ignore: cast_nullable_to_non_nullable
              as FoldersOfScenes,
    ));
  }

  @override
  $FoldersOfScenesCopyWith<$Res> get foldersOfScenes {
    return $FoldersOfScenesCopyWith<$Res>(_value.foldersOfScenes, (value) {
      return _then(_value.copyWith(foldersOfScenes: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.foldersOfScenes);

  @override
  final FoldersOfScenes foldersOfScenes;

  @override
  String toString() {
    return 'FoldersOfScenesState.loaded(foldersOfScenes: $foldersOfScenes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.foldersOfScenes, foldersOfScenes) ||
                const DeepCollectionEquality()
                    .equals(other.foldersOfScenes, foldersOfScenes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foldersOfScenes);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function(FoldersOfScenes foldersOfScenes) loaded,
    required TResult Function() error,
  }) {
    return loaded(foldersOfScenes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function(FoldersOfScenes foldersOfScenes)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(foldersOfScenes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements FoldersOfScenesState {
  const factory Loaded(FoldersOfScenes foldersOfScenes) = _$Loaded;

  FoldersOfScenes get foldersOfScenes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$FoldersOfScenesStateCopyWithImpl<$Res>
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
    return 'FoldersOfScenesState.error()';
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
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function(FoldersOfScenes foldersOfScenes) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function(FoldersOfScenes foldersOfScenes)? loaded,
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
    TResult Function(_FoldersOfScenesState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FoldersOfScenesState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FoldersOfScenesState {
  const factory Error() = _$Error;
}
