// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'boilers_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoilersWatcherEventTearOff {
  const _$BoilersWatcherEventTearOff();

// ignore: unused_element
  _WatchAllBoilersStarted watchAllStarted() {
    return const _WatchAllBoilersStarted();
  }

// ignore: unused_element
  _BoilersReceived boilersReceived(
      Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices) {
    return _BoilersReceived(
      failureOrDevices,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BoilersWatcherEvent = _$BoilersWatcherEventTearOff();

/// @nodoc
mixin _$BoilersWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult boilersReceived(
            Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boilersReceived(
        Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllBoilersStarted value),
    @required TResult boilersReceived(_BoilersReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllBoilersStarted value),
    TResult boilersReceived(_BoilersReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoilersWatcherEventCopyWith<$Res> {
  factory $BoilersWatcherEventCopyWith(
          BoilersWatcherEvent value, $Res Function(BoilersWatcherEvent) then) =
      _$BoilersWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoilersWatcherEventCopyWithImpl<$Res>
    implements $BoilersWatcherEventCopyWith<$Res> {
  _$BoilersWatcherEventCopyWithImpl(this._value, this._then);

  final BoilersWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(BoilersWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllBoilersStartedCopyWith<$Res> {
  factory _$WatchAllBoilersStartedCopyWith(_WatchAllBoilersStarted value,
          $Res Function(_WatchAllBoilersStarted) then) =
      __$WatchAllBoilersStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllBoilersStartedCopyWithImpl<$Res>
    extends _$BoilersWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllBoilersStartedCopyWith<$Res> {
  __$WatchAllBoilersStartedCopyWithImpl(_WatchAllBoilersStarted _value,
      $Res Function(_WatchAllBoilersStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllBoilersStarted));

  @override
  _WatchAllBoilersStarted get _value => super._value as _WatchAllBoilersStarted;
}

/// @nodoc
class _$_WatchAllBoilersStarted implements _WatchAllBoilersStarted {
  const _$_WatchAllBoilersStarted();

  @override
  String toString() {
    return 'BoilersWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllBoilersStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult boilersReceived(
            Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
  }) {
    assert(watchAllStarted != null);
    assert(boilersReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boilersReceived(
        Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllBoilersStarted value),
    @required TResult boilersReceived(_BoilersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(boilersReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllBoilersStarted value),
    TResult boilersReceived(_BoilersReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllBoilersStarted implements BoilersWatcherEvent {
  const factory _WatchAllBoilersStarted() = _$_WatchAllBoilersStarted;
}

/// @nodoc
abstract class _$BoilersReceivedCopyWith<$Res> {
  factory _$BoilersReceivedCopyWith(
          _BoilersReceived value, $Res Function(_BoilersReceived) then) =
      __$BoilersReceivedCopyWithImpl<$Res>;
  $Res call({Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices});
}

/// @nodoc
class __$BoilersReceivedCopyWithImpl<$Res>
    extends _$BoilersWatcherEventCopyWithImpl<$Res>
    implements _$BoilersReceivedCopyWith<$Res> {
  __$BoilersReceivedCopyWithImpl(
      _BoilersReceived _value, $Res Function(_BoilersReceived) _then)
      : super(_value, (v) => _then(v as _BoilersReceived));

  @override
  _BoilersReceived get _value => super._value as _BoilersReceived;

  @override
  $Res call({
    Object failureOrDevices = freezed,
  }) {
    return _then(_BoilersReceived(
      failureOrDevices == freezed
          ? _value.failureOrDevices
          : failureOrDevices as Either<DevicesFailure, KtList<DeviceEntity>>,
    ));
  }
}

/// @nodoc
class _$_BoilersReceived implements _BoilersReceived {
  const _$_BoilersReceived(this.failureOrDevices)
      : assert(failureOrDevices != null);

  @override
  final Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices;

  @override
  String toString() {
    return 'BoilersWatcherEvent.boilersReceived(failureOrDevices: $failureOrDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoilersReceived &&
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
  _$BoilersReceivedCopyWith<_BoilersReceived> get copyWith =>
      __$BoilersReceivedCopyWithImpl<_BoilersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult boilersReceived(
            Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
  }) {
    assert(watchAllStarted != null);
    assert(boilersReceived != null);
    return boilersReceived(failureOrDevices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boilersReceived(
        Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boilersReceived != null) {
      return boilersReceived(failureOrDevices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllBoilersStarted value),
    @required TResult boilersReceived(_BoilersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(boilersReceived != null);
    return boilersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllBoilersStarted value),
    TResult boilersReceived(_BoilersReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boilersReceived != null) {
      return boilersReceived(this);
    }
    return orElse();
  }
}

abstract class _BoilersReceived implements BoilersWatcherEvent {
  const factory _BoilersReceived(
          Either<DevicesFailure, KtList<DeviceEntity>> failureOrDevices) =
      _$_BoilersReceived;

  Either<DevicesFailure, KtList<DeviceEntity>> get failureOrDevices;
  @JsonKey(ignore: true)
  _$BoilersReceivedCopyWith<_BoilersReceived> get copyWith;
}

/// @nodoc
class _$BoilersWatcherStateTearOff {
  const _$BoilersWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<DeviceEntity> devices) {
    return _LoadSuccess(
      devices,
    );
  }

// ignore: unused_element
  _loadFailure loadFailure(DevicesFailure<dynamic> devicesFailure) {
    return _loadFailure(
      devicesFailure,
    );
  }

// ignore: unused_element
  _BoilerError boilerError() {
    return const _BoilerError();
  }
}

/// @nodoc
// ignore: unused_element
const $BoilersWatcherState = _$BoilersWatcherStateTearOff();

/// @nodoc
mixin _$BoilersWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoilersWatcherStateCopyWith<$Res> {
  factory $BoilersWatcherStateCopyWith(
          BoilersWatcherState value, $Res Function(BoilersWatcherState) then) =
      _$BoilersWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoilersWatcherStateCopyWithImpl<$Res>
    implements $BoilersWatcherStateCopyWith<$Res> {
  _$BoilersWatcherStateCopyWithImpl(this._value, this._then);

  final BoilersWatcherState _value;
  // ignore: unused_field
  final $Res Function(BoilersWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BoilersWatcherStateCopyWithImpl<$Res>
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
    return 'BoilersWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BoilersWatcherState {
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
    extends _$BoilersWatcherStateCopyWithImpl<$Res>
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
    return 'BoilersWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BoilersWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DeviceEntity> devices});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$BoilersWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object devices = freezed,
  }) {
    return _then(_LoadSuccess(
      devices == freezed ? _value.devices : devices as KtList<DeviceEntity>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.devices) : assert(devices != null);

  @override
  final KtList<DeviceEntity> devices;

  @override
  String toString() {
    return 'BoilersWatcherState.loadSuccess(devices: $devices)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadSuccess(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BoilersWatcherState {
  const factory _LoadSuccess(KtList<DeviceEntity> devices) = _$_LoadSuccess;

  KtList<DeviceEntity> get devices;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
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
    extends _$BoilersWatcherStateCopyWithImpl<$Res>
    implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(
      _loadFailure _value, $Res Function(_loadFailure) _then)
      : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object devicesFailure = freezed,
  }) {
    return _then(_loadFailure(
      devicesFailure == freezed
          ? _value.devicesFailure
          : devicesFailure as DevicesFailure<dynamic>,
    ));
  }

  @override
  $DevicesFailureCopyWith<dynamic, $Res> get devicesFailure {
    if (_value.devicesFailure == null) {
      return null;
    }
    return $DevicesFailureCopyWith<dynamic, $Res>(_value.devicesFailure,
        (value) {
      return _then(_value.copyWith(devicesFailure: value));
    });
  }
}

/// @nodoc
class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.devicesFailure) : assert(devicesFailure != null);

  @override
  final DevicesFailure<dynamic> devicesFailure;

  @override
  String toString() {
    return 'BoilersWatcherState.loadFailure(devicesFailure: $devicesFailure)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(devicesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements BoilersWatcherState {
  const factory _loadFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_loadFailure;

  DevicesFailure<dynamic> get devicesFailure;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith;
}

/// @nodoc
abstract class _$BoilerErrorCopyWith<$Res> {
  factory _$BoilerErrorCopyWith(
          _BoilerError value, $Res Function(_BoilerError) then) =
      __$BoilerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$BoilerErrorCopyWithImpl<$Res>
    extends _$BoilersWatcherStateCopyWithImpl<$Res>
    implements _$BoilerErrorCopyWith<$Res> {
  __$BoilerErrorCopyWithImpl(
      _BoilerError _value, $Res Function(_BoilerError) _then)
      : super(_value, (v) => _then(v as _BoilerError));

  @override
  _BoilerError get _value => super._value as _BoilerError;
}

/// @nodoc
class _$_BoilerError implements _BoilerError {
  const _$_BoilerError();

  @override
  String toString() {
    return 'BoilersWatcherState.boilerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BoilerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<DeviceEntity> devices),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult boilerError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return boilerError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<DeviceEntity> devices),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult boilerError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boilerError != null) {
      return boilerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult boilerError(_BoilerError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(boilerError != null);
    return boilerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult boilerError(_BoilerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boilerError != null) {
      return boilerError(this);
    }
    return orElse();
  }
}

abstract class _BoilerError implements BoilersWatcherState {
  const factory _BoilerError() = _$_BoilerError;
}
