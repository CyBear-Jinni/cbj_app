// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceWatcherEventTearOff {
  const _$DeviceWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _DevicesReceived devicesReceived(
      Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices) {
    return _DevicesReceived(
      failureOrDevices,
    );
  }
}

/// @nodoc
const $DeviceWatcherEvent = _$DeviceWatcherEventTearOff();

/// @nodoc
mixin _$DeviceWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        devicesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        devicesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_DevicesReceived value) devicesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_DevicesReceived value)? devicesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceWatcherEventCopyWith<$Res> {
  factory $DeviceWatcherEventCopyWith(
          DeviceWatcherEvent value, $Res Function(DeviceWatcherEvent) then) =
      _$DeviceWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceWatcherEventCopyWithImpl<$Res>
    implements $DeviceWatcherEventCopyWith<$Res> {
  _$DeviceWatcherEventCopyWithImpl(this._value, this._then);

  final DeviceWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$DeviceWatcherEventCopyWithImpl<$Res>
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
    return 'DeviceWatcherEvent.watchAllStarted()';
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
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        devicesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        devicesReceived,
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
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_DevicesReceived value) devicesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_DevicesReceived value)? devicesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements DeviceWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$DevicesReceivedCopyWith<$Res> {
  factory _$DevicesReceivedCopyWith(
          _DevicesReceived value, $Res Function(_DevicesReceived) then) =
      __$DevicesReceivedCopyWithImpl<$Res>;
  $Res call({Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices});
}

/// @nodoc
class __$DevicesReceivedCopyWithImpl<$Res>
    extends _$DeviceWatcherEventCopyWithImpl<$Res>
    implements _$DevicesReceivedCopyWith<$Res> {
  __$DevicesReceivedCopyWithImpl(
      _DevicesReceived _value, $Res Function(_DevicesReceived) _then)
      : super(_value, (v) => _then(v as _DevicesReceived));

  @override
  _DevicesReceived get _value => super._value as _DevicesReceived;

  @override
  $Res call({
    Object? failureOrDevices = freezed,
  }) {
    return _then(_DevicesReceived(
      failureOrDevices == freezed
          ? _value.failureOrDevices
          : failureOrDevices // ignore: cast_nullable_to_non_nullable
              as Either<DevicesFailure, KtList<DeviceEntity?>>,
    ));
  }
}

/// @nodoc

class _$_DevicesReceived implements _DevicesReceived {
  const _$_DevicesReceived(this.failureOrDevices);

  @override
  final Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices;

  @override
  String toString() {
    return 'DeviceWatcherEvent.devicesReceived(failureOrDevices: $failureOrDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DevicesReceived &&
            (identical(other.failureOrDevices, failureOrDevices) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDevices, failureOrDevices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrDevices);

  @JsonKey(ignore: true)
  @override
  _$DevicesReceivedCopyWith<_DevicesReceived> get copyWith =>
      __$DevicesReceivedCopyWithImpl<_DevicesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        devicesReceived,
  }) {
    return devicesReceived(failureOrDevices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        devicesReceived,
    required TResult orElse(),
  }) {
    if (devicesReceived != null) {
      return devicesReceived(failureOrDevices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_DevicesReceived value) devicesReceived,
  }) {
    return devicesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_DevicesReceived value)? devicesReceived,
    required TResult orElse(),
  }) {
    if (devicesReceived != null) {
      return devicesReceived(this);
    }
    return orElse();
  }
}

abstract class _DevicesReceived implements DeviceWatcherEvent {
  const factory _DevicesReceived(
          Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices) =
      _$_DevicesReceived;

  Either<DevicesFailure, KtList<DeviceEntity?>> get failureOrDevices =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DevicesReceivedCopyWith<_DevicesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceWatcherStateTearOff {
  const _$DeviceWatcherStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<DeviceEntity?> devices) {
    return _LoadSuccess(
      devices,
    );
  }

  _loadFailure loadFailure(DevicesFailure<dynamic> devicesFailure) {
    return _loadFailure(
      devicesFailure,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $DeviceWatcherState = _$DeviceWatcherStateTearOff();

/// @nodoc
mixin _$DeviceWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceWatcherStateCopyWith<$Res> {
  factory $DeviceWatcherStateCopyWith(
          DeviceWatcherState value, $Res Function(DeviceWatcherState) then) =
      _$DeviceWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceWatcherStateCopyWithImpl<$Res>
    implements $DeviceWatcherStateCopyWith<$Res> {
  _$DeviceWatcherStateCopyWithImpl(this._value, this._then);

  final DeviceWatcherState _value;
  // ignore: unused_field
  final $Res Function(DeviceWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DeviceWatcherStateCopyWithImpl<$Res>
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
    return 'DeviceWatcherState.initial()';
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
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
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
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
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

abstract class _Initial implements DeviceWatcherState {
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
    extends _$DeviceWatcherStateCopyWithImpl<$Res>
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
    return 'DeviceWatcherState.loadInProgress()';
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
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
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
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
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

abstract class _LoadInProgress implements DeviceWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DeviceEntity?> devices});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$DeviceWatcherStateCopyWithImpl<$Res>
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
              as KtList<DeviceEntity?>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.devices);

  @override
  final KtList<DeviceEntity?> devices;

  @override
  String toString() {
    return 'DeviceWatcherState.loadSuccess(devices: $devices)';
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
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
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
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
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

abstract class _LoadSuccess implements DeviceWatcherState {
  const factory _LoadSuccess(KtList<DeviceEntity?> devices) = _$_LoadSuccess;

  KtList<DeviceEntity?> get devices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(
          _loadFailure value, $Res Function(_loadFailure) then) =
      __$loadFailureCopyWithImpl<$Res>;
  $Res call({DevicesFailure<dynamic> devicesFailure});

  $DevicesFailureCopyWith<dynamic, $Res> get devicesFailure;
}

/// @nodoc
class __$loadFailureCopyWithImpl<$Res>
    extends _$DeviceWatcherStateCopyWithImpl<$Res>
    implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(
      _loadFailure _value, $Res Function(_loadFailure) _then)
      : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object? devicesFailure = freezed,
  }) {
    return _then(_loadFailure(
      devicesFailure == freezed
          ? _value.devicesFailure
          : devicesFailure // ignore: cast_nullable_to_non_nullable
              as DevicesFailure<dynamic>,
    ));
  }

  @override
  $DevicesFailureCopyWith<dynamic, $Res> get devicesFailure {
    return $DevicesFailureCopyWith<dynamic, $Res>(_value.devicesFailure,
        (value) {
      return _then(_value.copyWith(devicesFailure: value));
    });
  }
}

/// @nodoc

class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.devicesFailure);

  @override
  final DevicesFailure<dynamic> devicesFailure;

  @override
  String toString() {
    return 'DeviceWatcherState.loadFailure(devicesFailure: $devicesFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _loadFailure &&
            (identical(other.devicesFailure, devicesFailure) ||
                const DeepCollectionEquality()
                    .equals(other.devicesFailure, devicesFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(devicesFailure);

  @JsonKey(ignore: true)
  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(devicesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
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

abstract class _loadFailure implements DeviceWatcherState {
  const factory _loadFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_loadFailure;

  DevicesFailure<dynamic> get devicesFailure =>
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
class _$ErrorCopyWithImpl<$Res> extends _$DeviceWatcherStateCopyWithImpl<$Res>
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
    return 'DeviceWatcherState.error()';
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
    required TResult Function(KtList<DeviceEntity?> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
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
    TResult Function(KtList<DeviceEntity?> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
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

abstract class Error implements DeviceWatcherState {
  const factory Error() = _$Error;
}
