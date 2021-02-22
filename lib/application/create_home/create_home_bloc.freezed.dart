// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateHomeEventTearOff {
  const _$CreateHomeEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHomeEvent = _$CreateHomeEventTearOff();

/// @nodoc
mixin _$CreateHomeEvent {
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
abstract class $CreateHomeEventCopyWith<$Res> {
  factory $CreateHomeEventCopyWith(
          CreateHomeEvent value, $Res Function(CreateHomeEvent) then) =
      _$CreateHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateHomeEventCopyWithImpl<$Res>
    implements $CreateHomeEventCopyWith<$Res> {
  _$CreateHomeEventCopyWithImpl(this._value, this._then);

  final CreateHomeEvent _value;
  // ignore: unused_field
  final $Res Function(CreateHomeEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$CreateHomeEventCopyWithImpl<$Res>
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
    return 'CreateHomeEvent.initialized()';
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

abstract class Initialized implements CreateHomeEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
class _$CreateHomeStateTearOff {
  const _$CreateHomeStateTearOff();

// ignore: unused_element
  _CreateHomeState call(
      {@required
          Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _CreateHomeState(
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded() {
    return const Loaded();
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHomeState = _$CreateHomeStateTearOff();

/// @nodoc
mixin _$CreateHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_CreateHomeState value), {
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_CreateHomeState value), {
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CreateHomeStateCopyWith<$Res> {
  factory $CreateHomeStateCopyWith(
          CreateHomeState value, $Res Function(CreateHomeState) then) =
      _$CreateHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateHomeStateCopyWithImpl<$Res>
    implements $CreateHomeStateCopyWith<$Res> {
  _$CreateHomeStateCopyWithImpl(this._value, this._then);

  final CreateHomeState _value;
  // ignore: unused_field
  final $Res Function(CreateHomeState) _then;
}

/// @nodoc
abstract class _$CreateHomeStateCopyWith<$Res> {
  factory _$CreateHomeStateCopyWith(
          _CreateHomeState value, $Res Function(_CreateHomeState) then) =
      __$CreateHomeStateCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$CreateHomeStateCopyWithImpl<$Res>
    extends _$CreateHomeStateCopyWithImpl<$Res>
    implements _$CreateHomeStateCopyWith<$Res> {
  __$CreateHomeStateCopyWithImpl(
      _CreateHomeState _value, $Res Function(_CreateHomeState) _then)
      : super(_value, (v) => _then(v as _CreateHomeState));

  @override
  _CreateHomeState get _value => super._value as _CreateHomeState;

  @override
  $Res call({
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateHomeState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CreateHomeState implements _CreateHomeState {
  const _$_CreateHomeState({@required this.authFailureOrSuccessOption})
      : assert(authFailureOrSuccessOption != null);

  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateHomeState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHomeState &&
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
  _$CreateHomeStateCopyWith<_CreateHomeState> get copyWith =>
      __$CreateHomeStateCopyWithImpl<_CreateHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(),
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
    TResult loaded(),
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
    TResult $default(_CreateHomeState value), {
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
    TResult $default(_CreateHomeState value), {
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

abstract class _CreateHomeState implements CreateHomeState {
  const factory _CreateHomeState(
          {@required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_CreateHomeState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$CreateHomeStateCopyWith<_CreateHomeState> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CreateHomeStateCopyWithImpl<$Res>
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
    return 'CreateHomeState.loading()';
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
    @required TResult loaded(),
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
    TResult loaded(),
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
    TResult $default(_CreateHomeState value), {
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
    TResult $default(_CreateHomeState value), {
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

abstract class Loading implements CreateHomeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$CreateHomeStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded();

  @override
  String toString() {
    return 'CreateHomeState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_CreateHomeState value), {
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
    TResult $default(_CreateHomeState value), {
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

abstract class Loaded implements CreateHomeState {
  const factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$CreateHomeStateCopyWithImpl<$Res>
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
    return 'CreateHomeState.error()';
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
    @required TResult loaded(),
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
    TResult loaded(),
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
    TResult $default(_CreateHomeState value), {
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
    TResult $default(_CreateHomeState value), {
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

abstract class Error implements CreateHomeState {
  const factory Error() = _$Error;
}
