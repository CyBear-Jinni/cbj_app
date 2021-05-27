// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'join_home_by_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinHomeByIdEventTearOff {
  const _$JoinHomeByIdEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  AddHomeById addHomeById(String id) {
    return AddHomeById(
      id,
    );
  }
}

/// @nodoc
const $JoinHomeByIdEvent = _$JoinHomeByIdEventTearOff();

/// @nodoc
mixin _$JoinHomeByIdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String id) addHomeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String id)? addHomeById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AddHomeById value) addHomeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AddHomeById value)? addHomeById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinHomeByIdEventCopyWith<$Res> {
  factory $JoinHomeByIdEventCopyWith(
          JoinHomeByIdEvent value, $Res Function(JoinHomeByIdEvent) then) =
      _$JoinHomeByIdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinHomeByIdEventCopyWithImpl<$Res>
    implements $JoinHomeByIdEventCopyWith<$Res> {
  _$JoinHomeByIdEventCopyWithImpl(this._value, this._then);

  final JoinHomeByIdEvent _value;
  // ignore: unused_field
  final $Res Function(JoinHomeByIdEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$JoinHomeByIdEventCopyWithImpl<$Res>
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
    return 'JoinHomeByIdEvent.initialized()';
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
    required TResult Function(String id) addHomeById,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String id)? addHomeById,
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
    required TResult Function(AddHomeById value) addHomeById,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AddHomeById value)? addHomeById,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements JoinHomeByIdEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class $AddHomeByIdCopyWith<$Res> {
  factory $AddHomeByIdCopyWith(
          AddHomeById value, $Res Function(AddHomeById) then) =
      _$AddHomeByIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$AddHomeByIdCopyWithImpl<$Res>
    extends _$JoinHomeByIdEventCopyWithImpl<$Res>
    implements $AddHomeByIdCopyWith<$Res> {
  _$AddHomeByIdCopyWithImpl(
      AddHomeById _value, $Res Function(AddHomeById) _then)
      : super(_value, (v) => _then(v as AddHomeById));

  @override
  AddHomeById get _value => super._value as AddHomeById;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(AddHomeById(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddHomeById implements AddHomeById {
  const _$AddHomeById(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'JoinHomeByIdEvent.addHomeById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddHomeById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $AddHomeByIdCopyWith<AddHomeById> get copyWith =>
      _$AddHomeByIdCopyWithImpl<AddHomeById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String id) addHomeById,
  }) {
    return addHomeById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String id)? addHomeById,
    required TResult orElse(),
  }) {
    if (addHomeById != null) {
      return addHomeById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AddHomeById value) addHomeById,
  }) {
    return addHomeById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AddHomeById value)? addHomeById,
    required TResult orElse(),
  }) {
    if (addHomeById != null) {
      return addHomeById(this);
    }
    return orElse();
  }
}

abstract class AddHomeById implements JoinHomeByIdEvent {
  const factory AddHomeById(String id) = _$AddHomeById;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddHomeByIdCopyWith<AddHomeById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$JoinHomeByIdStateTearOff {
  const _$JoinHomeByIdStateTearOff();

  _JoinHomeByIdState call(
      {required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _JoinHomeByIdState(
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
const $JoinHomeByIdState = _$JoinHomeByIdStateTearOff();

/// @nodoc
mixin _$JoinHomeByIdState {
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
    TResult Function(_JoinHomeByIdState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinHomeByIdState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinHomeByIdStateCopyWith<$Res> {
  factory $JoinHomeByIdStateCopyWith(
          JoinHomeByIdState value, $Res Function(JoinHomeByIdState) then) =
      _$JoinHomeByIdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinHomeByIdStateCopyWithImpl<$Res>
    implements $JoinHomeByIdStateCopyWith<$Res> {
  _$JoinHomeByIdStateCopyWithImpl(this._value, this._then);

  final JoinHomeByIdState _value;
  // ignore: unused_field
  final $Res Function(JoinHomeByIdState) _then;
}

/// @nodoc
abstract class _$JoinHomeByIdStateCopyWith<$Res> {
  factory _$JoinHomeByIdStateCopyWith(
          _JoinHomeByIdState value, $Res Function(_JoinHomeByIdState) then) =
      __$JoinHomeByIdStateCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$JoinHomeByIdStateCopyWithImpl<$Res>
    extends _$JoinHomeByIdStateCopyWithImpl<$Res>
    implements _$JoinHomeByIdStateCopyWith<$Res> {
  __$JoinHomeByIdStateCopyWithImpl(
      _JoinHomeByIdState _value, $Res Function(_JoinHomeByIdState) _then)
      : super(_value, (v) => _then(v as _JoinHomeByIdState));

  @override
  _JoinHomeByIdState get _value => super._value as _JoinHomeByIdState;

  @override
  $Res call({
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_JoinHomeByIdState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_JoinHomeByIdState implements _JoinHomeByIdState {
  const _$_JoinHomeByIdState({required this.authFailureOrSuccessOption});

  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'JoinHomeByIdState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinHomeByIdState &&
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
  _$JoinHomeByIdStateCopyWith<_JoinHomeByIdState> get copyWith =>
      __$JoinHomeByIdStateCopyWithImpl<_JoinHomeByIdState>(this, _$identity);

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
    TResult Function(_JoinHomeByIdState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinHomeByIdState value)? $default, {
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

abstract class _JoinHomeByIdState implements JoinHomeByIdState {
  const factory _JoinHomeByIdState(
      {required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_JoinHomeByIdState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$JoinHomeByIdStateCopyWith<_JoinHomeByIdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$JoinHomeByIdStateCopyWithImpl<$Res>
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
    return 'JoinHomeByIdState.loading()';
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
    TResult Function(_JoinHomeByIdState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinHomeByIdState value)? $default, {
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

abstract class Loading implements JoinHomeByIdState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$JoinHomeByIdStateCopyWithImpl<$Res>
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
    return 'JoinHomeByIdState.loaded()';
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
    TResult Function(_JoinHomeByIdState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinHomeByIdState value)? $default, {
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

abstract class Loaded implements JoinHomeByIdState {
  const factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$JoinHomeByIdStateCopyWithImpl<$Res>
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
    return 'JoinHomeByIdState.error()';
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
    TResult Function(_JoinHomeByIdState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_JoinHomeByIdState value)? $default, {
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

abstract class Error implements JoinHomeByIdState {
  const factory Error() = _$Error;
}
