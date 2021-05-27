// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blinds_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlindsWatcherEventTearOff {
  const _$BlindsWatcherEventTearOff();

  _WatchAllBlindsStarted watchAllStarted() {
    return const _WatchAllBlindsStarted();
  }

  _blindsReceived blindsReceived(
      Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices) {
    return _blindsReceived(
      failureOrDevices,
    );
  }
}

/// @nodoc
const $BlindsWatcherEvent = _$BlindsWatcherEventTearOff();

/// @nodoc
mixin _$BlindsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        blindsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        blindsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllBlindsStarted value) watchAllStarted,
    required TResult Function(_blindsReceived value) blindsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllBlindsStarted value)? watchAllStarted,
    TResult Function(_blindsReceived value)? blindsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlindsWatcherEventCopyWith<$Res> {
  factory $BlindsWatcherEventCopyWith(
          BlindsWatcherEvent value, $Res Function(BlindsWatcherEvent) then) =
      _$BlindsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlindsWatcherEventCopyWithImpl<$Res>
    implements $BlindsWatcherEventCopyWith<$Res> {
  _$BlindsWatcherEventCopyWithImpl(this._value, this._then);

  final BlindsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(BlindsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllBlindsStartedCopyWith<$Res> {
  factory _$WatchAllBlindsStartedCopyWith(_WatchAllBlindsStarted value,
          $Res Function(_WatchAllBlindsStarted) then) =
      __$WatchAllBlindsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllBlindsStartedCopyWithImpl<$Res>
    extends _$BlindsWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllBlindsStartedCopyWith<$Res> {
  __$WatchAllBlindsStartedCopyWithImpl(_WatchAllBlindsStarted _value,
      $Res Function(_WatchAllBlindsStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllBlindsStarted));

  @override
  _WatchAllBlindsStarted get _value => super._value as _WatchAllBlindsStarted;
}

/// @nodoc

class _$_WatchAllBlindsStarted implements _WatchAllBlindsStarted {
  const _$_WatchAllBlindsStarted();

  @override
  String toString() {
    return 'BlindsWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllBlindsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        blindsReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        blindsReceived,
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
    required TResult Function(_WatchAllBlindsStarted value) watchAllStarted,
    required TResult Function(_blindsReceived value) blindsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllBlindsStarted value)? watchAllStarted,
    TResult Function(_blindsReceived value)? blindsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllBlindsStarted implements BlindsWatcherEvent {
  const factory _WatchAllBlindsStarted() = _$_WatchAllBlindsStarted;
}

/// @nodoc
abstract class _$blindsReceivedCopyWith<$Res> {
  factory _$blindsReceivedCopyWith(
          _blindsReceived value, $Res Function(_blindsReceived) then) =
      __$blindsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices});
}

/// @nodoc
class __$blindsReceivedCopyWithImpl<$Res>
    extends _$BlindsWatcherEventCopyWithImpl<$Res>
    implements _$blindsReceivedCopyWith<$Res> {
  __$blindsReceivedCopyWithImpl(
      _blindsReceived _value, $Res Function(_blindsReceived) _then)
      : super(_value, (v) => _then(v as _blindsReceived));

  @override
  _blindsReceived get _value => super._value as _blindsReceived;

  @override
  $Res call({
    Object? failureOrDevices = freezed,
  }) {
    return _then(_blindsReceived(
      failureOrDevices == freezed
          ? _value.failureOrDevices
          : failureOrDevices // ignore: cast_nullable_to_non_nullable
              as Either<DevicesFailure, KtList<DeviceEntity?>>,
    ));
  }
}

/// @nodoc

class _$_blindsReceived implements _blindsReceived {
  const _$_blindsReceived(this.failureOrDevices);

  @override
  final Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices;

  @override
  String toString() {
    return 'BlindsWatcherEvent.blindsReceived(failureOrDevices: $failureOrDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _blindsReceived &&
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
  _$blindsReceivedCopyWith<_blindsReceived> get copyWith =>
      __$blindsReceivedCopyWithImpl<_blindsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)
        blindsReceived,
  }) {
    return blindsReceived(failureOrDevices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices)?
        blindsReceived,
    required TResult orElse(),
  }) {
    if (blindsReceived != null) {
      return blindsReceived(failureOrDevices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllBlindsStarted value) watchAllStarted,
    required TResult Function(_blindsReceived value) blindsReceived,
  }) {
    return blindsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllBlindsStarted value)? watchAllStarted,
    TResult Function(_blindsReceived value)? blindsReceived,
    required TResult orElse(),
  }) {
    if (blindsReceived != null) {
      return blindsReceived(this);
    }
    return orElse();
  }
}

abstract class _blindsReceived implements BlindsWatcherEvent {
  const factory _blindsReceived(
          Either<DevicesFailure, KtList<DeviceEntity?>> failureOrDevices) =
      _$_blindsReceived;

  Either<DevicesFailure, KtList<DeviceEntity?>> get failureOrDevices =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$blindsReceivedCopyWith<_blindsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlindsWatcherStateTearOff {
  const _$BlindsWatcherStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<DeviceEntity> devices) {
    return _LoadSuccess(
      devices,
    );
  }

  _loadFailure loadFailure(DevicesFailure<dynamic> devicesFailure) {
    return _loadFailure(
      devicesFailure,
    );
  }

  BlindError blindError() {
    return const BlindError();
  }
}

/// @nodoc
const $BlindsWatcherState = _$BlindsWatcherStateTearOff();

/// @nodoc
mixin _$BlindsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(BlindError value) blindError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlindsWatcherStateCopyWith<$Res> {
  factory $BlindsWatcherStateCopyWith(
          BlindsWatcherState value, $Res Function(BlindsWatcherState) then) =
      _$BlindsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlindsWatcherStateCopyWithImpl<$Res>
    implements $BlindsWatcherStateCopyWith<$Res> {
  _$BlindsWatcherStateCopyWithImpl(this._value, this._then);

  final BlindsWatcherState _value;
  // ignore: unused_field
  final $Res Function(BlindsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BlindsWatcherStateCopyWithImpl<$Res>
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
    return 'BlindsWatcherState.initial()';
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
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
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
    required TResult Function(BlindError value) blindError,
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
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BlindsWatcherState {
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
    extends _$BlindsWatcherStateCopyWithImpl<$Res>
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
    return 'BlindsWatcherState.loadInProgress()';
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
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
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
    required TResult Function(BlindError value) blindError,
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
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BlindsWatcherState {
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
    extends _$BlindsWatcherStateCopyWithImpl<$Res>
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
              as KtList<DeviceEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.devices);

  @override
  final KtList<DeviceEntity> devices;

  @override
  String toString() {
    return 'BlindsWatcherState.loadSuccess(devices: $devices)';
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
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) {
    return loadSuccess(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
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
    required TResult Function(BlindError value) blindError,
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
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BlindsWatcherState {
  const factory _LoadSuccess(KtList<DeviceEntity> devices) = _$_LoadSuccess;

  KtList<DeviceEntity> get devices => throw _privateConstructorUsedError;
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
    extends _$BlindsWatcherStateCopyWithImpl<$Res>
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
    return 'BlindsWatcherState.loadFailure(devicesFailure: $devicesFailure)';
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
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) {
    return loadFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
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
    required TResult Function(BlindError value) blindError,
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
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements BlindsWatcherState {
  const factory _loadFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_loadFailure;

  DevicesFailure<dynamic> get devicesFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlindErrorCopyWith<$Res> {
  factory $BlindErrorCopyWith(
          BlindError value, $Res Function(BlindError) then) =
      _$BlindErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlindErrorCopyWithImpl<$Res>
    extends _$BlindsWatcherStateCopyWithImpl<$Res>
    implements $BlindErrorCopyWith<$Res> {
  _$BlindErrorCopyWithImpl(BlindError _value, $Res Function(BlindError) _then)
      : super(_value, (v) => _then(v as BlindError));

  @override
  BlindError get _value => super._value as BlindError;
}

/// @nodoc

class _$BlindError implements BlindError {
  const _$BlindError();

  @override
  String toString() {
    return 'BlindsWatcherState.blindError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BlindError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<DeviceEntity> devices) loadSuccess,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        loadFailure,
    required TResult Function() blindError,
  }) {
    return blindError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<DeviceEntity> devices)? loadSuccess,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? loadFailure,
    TResult Function()? blindError,
    required TResult orElse(),
  }) {
    if (blindError != null) {
      return blindError();
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
    required TResult Function(BlindError value) blindError,
  }) {
    return blindError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(BlindError value)? blindError,
    required TResult orElse(),
  }) {
    if (blindError != null) {
      return blindError(this);
    }
    return orElse();
  }
}

abstract class BlindError implements BlindsWatcherState {
  const factory BlindError() = _$BlindError;
}
