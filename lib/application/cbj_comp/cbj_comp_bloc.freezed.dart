// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cbj_comp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CBJCompEventTearOff {
  const _$CBJCompEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _ChangeState changeAction(CBJCompEntity cBJCompEntity) {
    return _ChangeState(
      cBJCompEntity,
    );
  }

  _CompDevicesReceived compDevicesReceived(
      Either<CBJCompFailure, String> failureOrCBJCompList) {
    return _CompDevicesReceived(
      failureOrCBJCompList,
    );
  }

  _CreateDevice create(CBJCompEntity cBJCompEntity) {
    return _CreateDevice(
      cBJCompEntity,
    );
  }
}

/// @nodoc
const $CBJCompEvent = _$CBJCompEventTearOff();

/// @nodoc
mixin _$CBJCompEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CBJCompEventCopyWith<$Res> {
  factory $CBJCompEventCopyWith(
          CBJCompEvent value, $Res Function(CBJCompEvent) then) =
      _$CBJCompEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CBJCompEventCopyWithImpl<$Res> implements $CBJCompEventCopyWith<$Res> {
  _$CBJCompEventCopyWithImpl(this._value, this._then);

  final CBJCompEvent _value;
  // ignore: unused_field
  final $Res Function(CBJCompEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$CBJCompEventCopyWithImpl<$Res>
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
    return 'CBJCompEvent.initialized()';
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
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
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
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements CBJCompEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CBJCompEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'CBJCompEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CBJCompEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ChangeStateCopyWith<$Res> {
  factory _$ChangeStateCopyWith(
          _ChangeState value, $Res Function(_ChangeState) then) =
      __$ChangeStateCopyWithImpl<$Res>;
  $Res call({CBJCompEntity cBJCompEntity});

  $CBJCompEntityCopyWith<$Res> get cBJCompEntity;
}

/// @nodoc
class __$ChangeStateCopyWithImpl<$Res> extends _$CBJCompEventCopyWithImpl<$Res>
    implements _$ChangeStateCopyWith<$Res> {
  __$ChangeStateCopyWithImpl(
      _ChangeState _value, $Res Function(_ChangeState) _then)
      : super(_value, (v) => _then(v as _ChangeState));

  @override
  _ChangeState get _value => super._value as _ChangeState;

  @override
  $Res call({
    Object? cBJCompEntity = freezed,
  }) {
    return _then(_ChangeState(
      cBJCompEntity == freezed
          ? _value.cBJCompEntity
          : cBJCompEntity // ignore: cast_nullable_to_non_nullable
              as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get cBJCompEntity {
    return $CBJCompEntityCopyWith<$Res>(_value.cBJCompEntity, (value) {
      return _then(_value.copyWith(cBJCompEntity: value));
    });
  }
}

/// @nodoc

class _$_ChangeState implements _ChangeState {
  const _$_ChangeState(this.cBJCompEntity);

  @override
  final CBJCompEntity cBJCompEntity;

  @override
  String toString() {
    return 'CBJCompEvent.changeAction(cBJCompEntity: $cBJCompEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeState &&
            (identical(other.cBJCompEntity, cBJCompEntity) ||
                const DeepCollectionEquality()
                    .equals(other.cBJCompEntity, cBJCompEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cBJCompEntity);

  @JsonKey(ignore: true)
  @override
  _$ChangeStateCopyWith<_ChangeState> get copyWith =>
      __$ChangeStateCopyWithImpl<_ChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) {
    return changeAction(cBJCompEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
    required TResult orElse(),
  }) {
    if (changeAction != null) {
      return changeAction(cBJCompEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) {
    return changeAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) {
    if (changeAction != null) {
      return changeAction(this);
    }
    return orElse();
  }
}

abstract class _ChangeState implements CBJCompEvent {
  const factory _ChangeState(CBJCompEntity cBJCompEntity) = _$_ChangeState;

  CBJCompEntity get cBJCompEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeStateCopyWith<_ChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompDevicesReceivedCopyWith<$Res> {
  factory _$CompDevicesReceivedCopyWith(_CompDevicesReceived value,
          $Res Function(_CompDevicesReceived) then) =
      __$CompDevicesReceivedCopyWithImpl<$Res>;
  $Res call({Either<CBJCompFailure, String> failureOrCBJCompList});
}

/// @nodoc
class __$CompDevicesReceivedCopyWithImpl<$Res>
    extends _$CBJCompEventCopyWithImpl<$Res>
    implements _$CompDevicesReceivedCopyWith<$Res> {
  __$CompDevicesReceivedCopyWithImpl(
      _CompDevicesReceived _value, $Res Function(_CompDevicesReceived) _then)
      : super(_value, (v) => _then(v as _CompDevicesReceived));

  @override
  _CompDevicesReceived get _value => super._value as _CompDevicesReceived;

  @override
  $Res call({
    Object? failureOrCBJCompList = freezed,
  }) {
    return _then(_CompDevicesReceived(
      failureOrCBJCompList == freezed
          ? _value.failureOrCBJCompList
          : failureOrCBJCompList // ignore: cast_nullable_to_non_nullable
              as Either<CBJCompFailure, String>,
    ));
  }
}

/// @nodoc

class _$_CompDevicesReceived implements _CompDevicesReceived {
  const _$_CompDevicesReceived(this.failureOrCBJCompList);

  @override
  final Either<CBJCompFailure, String> failureOrCBJCompList;

  @override
  String toString() {
    return 'CBJCompEvent.compDevicesReceived(failureOrCBJCompList: $failureOrCBJCompList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompDevicesReceived &&
            (identical(other.failureOrCBJCompList, failureOrCBJCompList) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCBJCompList, failureOrCBJCompList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCBJCompList);

  @JsonKey(ignore: true)
  @override
  _$CompDevicesReceivedCopyWith<_CompDevicesReceived> get copyWith =>
      __$CompDevicesReceivedCopyWithImpl<_CompDevicesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) {
    return compDevicesReceived(failureOrCBJCompList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
    required TResult orElse(),
  }) {
    if (compDevicesReceived != null) {
      return compDevicesReceived(failureOrCBJCompList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) {
    return compDevicesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) {
    if (compDevicesReceived != null) {
      return compDevicesReceived(this);
    }
    return orElse();
  }
}

abstract class _CompDevicesReceived implements CBJCompEvent {
  const factory _CompDevicesReceived(
          Either<CBJCompFailure, String> failureOrCBJCompList) =
      _$_CompDevicesReceived;

  Either<CBJCompFailure, String> get failureOrCBJCompList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompDevicesReceivedCopyWith<_CompDevicesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateDeviceCopyWith<$Res> {
  factory _$CreateDeviceCopyWith(
          _CreateDevice value, $Res Function(_CreateDevice) then) =
      __$CreateDeviceCopyWithImpl<$Res>;
  $Res call({CBJCompEntity cBJCompEntity});

  $CBJCompEntityCopyWith<$Res> get cBJCompEntity;
}

/// @nodoc
class __$CreateDeviceCopyWithImpl<$Res> extends _$CBJCompEventCopyWithImpl<$Res>
    implements _$CreateDeviceCopyWith<$Res> {
  __$CreateDeviceCopyWithImpl(
      _CreateDevice _value, $Res Function(_CreateDevice) _then)
      : super(_value, (v) => _then(v as _CreateDevice));

  @override
  _CreateDevice get _value => super._value as _CreateDevice;

  @override
  $Res call({
    Object? cBJCompEntity = freezed,
  }) {
    return _then(_CreateDevice(
      cBJCompEntity == freezed
          ? _value.cBJCompEntity
          : cBJCompEntity // ignore: cast_nullable_to_non_nullable
              as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get cBJCompEntity {
    return $CBJCompEntityCopyWith<$Res>(_value.cBJCompEntity, (value) {
      return _then(_value.copyWith(cBJCompEntity: value));
    });
  }
}

/// @nodoc

class _$_CreateDevice implements _CreateDevice {
  const _$_CreateDevice(this.cBJCompEntity);

  @override
  final CBJCompEntity cBJCompEntity;

  @override
  String toString() {
    return 'CBJCompEvent.create(cBJCompEntity: $cBJCompEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateDevice &&
            (identical(other.cBJCompEntity, cBJCompEntity) ||
                const DeepCollectionEquality()
                    .equals(other.cBJCompEntity, cBJCompEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cBJCompEntity);

  @JsonKey(ignore: true)
  @override
  _$CreateDeviceCopyWith<_CreateDevice> get copyWith =>
      __$CreateDeviceCopyWithImpl<_CreateDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() watchAllStarted,
    required TResult Function(CBJCompEntity cBJCompEntity) changeAction,
    required TResult Function(
            Either<CBJCompFailure, String> failureOrCBJCompList)
        compDevicesReceived,
    required TResult Function(CBJCompEntity cBJCompEntity) create,
  }) {
    return create(cBJCompEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? watchAllStarted,
    TResult Function(CBJCompEntity cBJCompEntity)? changeAction,
    TResult Function(Either<CBJCompFailure, String> failureOrCBJCompList)?
        compDevicesReceived,
    TResult Function(CBJCompEntity cBJCompEntity)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(cBJCompEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ChangeState value) changeAction,
    required TResult Function(_CompDevicesReceived value) compDevicesReceived,
    required TResult Function(_CreateDevice value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ChangeState value)? changeAction,
    TResult Function(_CompDevicesReceived value)? compDevicesReceived,
    TResult Function(_CreateDevice value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateDevice implements CBJCompEvent {
  const factory _CreateDevice(CBJCompEntity cBJCompEntity) = _$_CreateDevice;

  CBJCompEntity get cBJCompEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateDeviceCopyWith<_CreateDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CBJCompStateTearOff {
  const _$CBJCompStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(CBJCompEntity devices) {
    return _LoadSuccess(
      devices,
    );
  }

  _LoadSuccessTemp loadSuccessTemp() {
    return const _LoadSuccessTemp();
  }

  _loadFailure loadFailure(CBJCompFailure<dynamic> cBJCompFailure) {
    return _loadFailure(
      cBJCompFailure,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $CBJCompState = _$CBJCompStateTearOff();

/// @nodoc
mixin _$CBJCompState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CBJCompStateCopyWith<$Res> {
  factory $CBJCompStateCopyWith(
          CBJCompState value, $Res Function(CBJCompState) then) =
      _$CBJCompStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CBJCompStateCopyWithImpl<$Res> implements $CBJCompStateCopyWith<$Res> {
  _$CBJCompStateCopyWithImpl(this._value, this._then);

  final CBJCompState _value;
  // ignore: unused_field
  final $Res Function(CBJCompState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CBJCompStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'CBJCompState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CBJCompState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CBJCompStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CBJCompState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CBJCompState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({CBJCompEntity devices});

  $CBJCompEntityCopyWith<$Res> get devices;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CBJCompStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_LoadSuccess(
      devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get devices {
    return $CBJCompEntityCopyWith<$Res>(_value.devices, (value) {
      return _then(_value.copyWith(devices: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.devices);

  @override
  final CBJCompEntity devices;

  @override
  String toString() {
    return 'CBJCompState.loadSuccess(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(devices);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadSuccess(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CBJCompState {
  const factory _LoadSuccess(CBJCompEntity devices) = _$_LoadSuccess;

  CBJCompEntity get devices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessTempCopyWith<$Res> {
  factory _$LoadSuccessTempCopyWith(
          _LoadSuccessTemp value, $Res Function(_LoadSuccessTemp) then) =
      __$LoadSuccessTempCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessTempCopyWithImpl<$Res>
    extends _$CBJCompStateCopyWithImpl<$Res>
    implements _$LoadSuccessTempCopyWith<$Res> {
  __$LoadSuccessTempCopyWithImpl(
      _LoadSuccessTemp _value, $Res Function(_LoadSuccessTemp) _then)
      : super(_value, (v) => _then(v as _LoadSuccessTemp));

  @override
  _LoadSuccessTemp get _value => super._value as _LoadSuccessTemp;
}

/// @nodoc

class _$_LoadSuccessTemp implements _LoadSuccessTemp {
  const _$_LoadSuccessTemp();

  @override
  String toString() {
    return 'CBJCompState.loadSuccessTemp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccessTemp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadSuccessTemp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadSuccessTemp != null) {
      return loadSuccessTemp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadSuccessTemp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccessTemp != null) {
      return loadSuccessTemp(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessTemp implements CBJCompState {
  const factory _LoadSuccessTemp() = _$_LoadSuccessTemp;
}

/// @nodoc
abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(
          _loadFailure value, $Res Function(_loadFailure) then) =
      __$loadFailureCopyWithImpl<$Res>;
  $Res call({CBJCompFailure<dynamic> cBJCompFailure});

  $CBJCompFailureCopyWith<dynamic, $Res> get cBJCompFailure;
}

/// @nodoc
class __$loadFailureCopyWithImpl<$Res> extends _$CBJCompStateCopyWithImpl<$Res>
    implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(
      _loadFailure _value, $Res Function(_loadFailure) _then)
      : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object? cBJCompFailure = freezed,
  }) {
    return _then(_loadFailure(
      cBJCompFailure == freezed
          ? _value.cBJCompFailure
          : cBJCompFailure // ignore: cast_nullable_to_non_nullable
              as CBJCompFailure<dynamic>,
    ));
  }

  @override
  $CBJCompFailureCopyWith<dynamic, $Res> get cBJCompFailure {
    return $CBJCompFailureCopyWith<dynamic, $Res>(_value.cBJCompFailure,
        (value) {
      return _then(_value.copyWith(cBJCompFailure: value));
    });
  }
}

/// @nodoc

class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.cBJCompFailure);

  @override
  final CBJCompFailure<dynamic> cBJCompFailure;

  @override
  String toString() {
    return 'CBJCompState.loadFailure(cBJCompFailure: $cBJCompFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _loadFailure &&
            (identical(other.cBJCompFailure, cBJCompFailure) ||
                const DeepCollectionEquality()
                    .equals(other.cBJCompFailure, cBJCompFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cBJCompFailure);

  @JsonKey(ignore: true)
  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadFailure(cBJCompFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(cBJCompFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements CBJCompState {
  const factory _loadFailure(CBJCompFailure<dynamic> cBJCompFailure) =
      _$_loadFailure;

  CBJCompFailure<dynamic> get cBJCompFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$CBJCompStateCopyWithImpl<$Res>
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
    return 'CBJCompState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(CBJCompEntity devices) loadSuccess,
    required TResult Function() loadSuccessTemp,
    required TResult Function(CBJCompFailure<dynamic> cBJCompFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(CBJCompEntity devices)? loadSuccess,
    TResult Function()? loadSuccessTemp,
    TResult Function(CBJCompFailure<dynamic> cBJCompFailure)? loadFailure,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadSuccessTemp value) loadSuccessTemp,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadSuccessTemp value)? loadSuccessTemp,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CBJCompState {
  const factory Error() = _$Error;
}
