// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateHomeEventTearOff {
  const _$CreateHomeEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  _CreateHome createHome(String homeName, String devicesEmail) {
    return _CreateHome(
      homeName,
      devicesEmail,
    );
  }
}

/// @nodoc
const $CreateHomeEvent = _$CreateHomeEventTearOff();

/// @nodoc
mixin _$CreateHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String homeName, String devicesEmail) createHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String homeName, String devicesEmail)? createHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_CreateHome value) createHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_CreateHome value)? createHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String homeName, String devicesEmail) createHome,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String homeName, String devicesEmail)? createHome,
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
    required TResult Function(_CreateHome value) createHome,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_CreateHome value)? createHome,
    required TResult orElse(),
  }) {
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
abstract class _$CreateHomeCopyWith<$Res> {
  factory _$CreateHomeCopyWith(
          _CreateHome value, $Res Function(_CreateHome) then) =
      __$CreateHomeCopyWithImpl<$Res>;
  $Res call({String homeName, String devicesEmail});
}

/// @nodoc
class __$CreateHomeCopyWithImpl<$Res>
    extends _$CreateHomeEventCopyWithImpl<$Res>
    implements _$CreateHomeCopyWith<$Res> {
  __$CreateHomeCopyWithImpl(
      _CreateHome _value, $Res Function(_CreateHome) _then)
      : super(_value, (v) => _then(v as _CreateHome));

  @override
  _CreateHome get _value => super._value as _CreateHome;

  @override
  $Res call({
    Object? homeName = freezed,
    Object? devicesEmail = freezed,
  }) {
    return _then(_CreateHome(
      homeName == freezed
          ? _value.homeName
          : homeName // ignore: cast_nullable_to_non_nullable
              as String,
      devicesEmail == freezed
          ? _value.devicesEmail
          : devicesEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateHome implements _CreateHome {
  const _$_CreateHome(this.homeName, this.devicesEmail);

  @override
  final String homeName;
  @override
  final String devicesEmail;

  @override
  String toString() {
    return 'CreateHomeEvent.createHome(homeName: $homeName, devicesEmail: $devicesEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateHome &&
            (identical(other.homeName, homeName) ||
                const DeepCollectionEquality()
                    .equals(other.homeName, homeName)) &&
            (identical(other.devicesEmail, devicesEmail) ||
                const DeepCollectionEquality()
                    .equals(other.devicesEmail, devicesEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeName) ^
      const DeepCollectionEquality().hash(devicesEmail);

  @JsonKey(ignore: true)
  @override
  _$CreateHomeCopyWith<_CreateHome> get copyWith =>
      __$CreateHomeCopyWithImpl<_CreateHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String homeName, String devicesEmail) createHome,
  }) {
    return createHome(homeName, devicesEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String homeName, String devicesEmail)? createHome,
    required TResult orElse(),
  }) {
    if (createHome != null) {
      return createHome(homeName, devicesEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_CreateHome value) createHome,
  }) {
    return createHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_CreateHome value)? createHome,
    required TResult orElse(),
  }) {
    if (createHome != null) {
      return createHome(this);
    }
    return orElse();
  }
}

abstract class _CreateHome implements CreateHomeEvent {
  const factory _CreateHome(String homeName, String devicesEmail) =
      _$_CreateHome;

  String get homeName => throw _privateConstructorUsedError;
  String get devicesEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateHomeCopyWith<_CreateHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateHomeStateTearOff {
  const _$CreateHomeStateTearOff();

  _CreateHomeState call(
      {required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _CreateHomeState(
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded() {
    return const Loaded();
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $CreateHomeState = _$CreateHomeStateTearOff();

/// @nodoc
mixin _$CreateHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateHomeState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateHomeState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateHomeState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateHomeState implements _CreateHomeState {
  const _$_CreateHomeState({required this.authFailureOrSuccessOption});

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
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
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
    TResult Function()? loaded,
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
    TResult Function(_CreateHomeState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateHomeState value)? $default, {
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

abstract class _CreateHomeState implements CreateHomeState {
  const factory _CreateHomeState(
      {required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_CreateHomeState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateHomeStateCopyWith<_CreateHomeState> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
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
    TResult Function()? loaded,
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
    TResult Function(_CreateHomeState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateHomeState value)? $default, {
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
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateHomeState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateHomeState value)? $default, {
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
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
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
    TResult Function()? loaded,
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
    TResult Function(_CreateHomeState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateHomeState value)? $default, {
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

abstract class Error implements CreateHomeState {
  const factory Error() = _$Error;
}
