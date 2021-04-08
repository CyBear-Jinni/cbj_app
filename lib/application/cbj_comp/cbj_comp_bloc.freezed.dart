// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cbj_comp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CBJCompEventTearOff {
  const _$CBJCompEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ChangeState changeAction(CBJCompEntity cBJCompEntity) {
    return _ChangeState(
      cBJCompEntity,
    );
  }

// ignore: unused_element
  _CompDevicesReceived compDevicesReceived(
      Either<CBJCompFailure, String> failureOrCBJCompList) {
    return _CompDevicesReceived(
      failureOrCBJCompList,
    );
  }

// ignore: unused_element
  _CreateDevice create(CBJCompEntity cBJCompEntity) {
    return _CreateDevice(
      cBJCompEntity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CBJCompEvent = _$CBJCompEventTearOff();

/// @nodoc
mixin _$CBJCompEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
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
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
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
    @required TResult initialized(Initialized value),
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object cBJCompEntity = freezed,
  }) {
    return _then(_ChangeState(
      cBJCompEntity == freezed
          ? _value.cBJCompEntity
          : cBJCompEntity as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get cBJCompEntity {
    if (_value.cBJCompEntity == null) {
      return null;
    }
    return $CBJCompEntityCopyWith<$Res>(_value.cBJCompEntity, (value) {
      return _then(_value.copyWith(cBJCompEntity: value));
    });
  }
}

/// @nodoc
class _$_ChangeState implements _ChangeState {
  const _$_ChangeState(this.cBJCompEntity) : assert(cBJCompEntity != null);

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
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return changeAction(cBJCompEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAction != null) {
      return changeAction(cBJCompEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return changeAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAction != null) {
      return changeAction(this);
    }
    return orElse();
  }
}

abstract class _ChangeState implements CBJCompEvent {
  const factory _ChangeState(CBJCompEntity cBJCompEntity) = _$_ChangeState;

  CBJCompEntity get cBJCompEntity;
  @JsonKey(ignore: true)
  _$ChangeStateCopyWith<_ChangeState> get copyWith;
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
    Object failureOrCBJCompList = freezed,
  }) {
    return _then(_CompDevicesReceived(
      failureOrCBJCompList == freezed
          ? _value.failureOrCBJCompList
          : failureOrCBJCompList as Either<CBJCompFailure, String>,
    ));
  }
}

/// @nodoc
class _$_CompDevicesReceived implements _CompDevicesReceived {
  const _$_CompDevicesReceived(this.failureOrCBJCompList)
      : assert(failureOrCBJCompList != null);

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
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return compDevicesReceived(failureOrCBJCompList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (compDevicesReceived != null) {
      return compDevicesReceived(failureOrCBJCompList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return compDevicesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

  Either<CBJCompFailure, String> get failureOrCBJCompList;
  @JsonKey(ignore: true)
  _$CompDevicesReceivedCopyWith<_CompDevicesReceived> get copyWith;
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
    Object cBJCompEntity = freezed,
  }) {
    return _then(_CreateDevice(
      cBJCompEntity == freezed
          ? _value.cBJCompEntity
          : cBJCompEntity as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get cBJCompEntity {
    if (_value.cBJCompEntity == null) {
      return null;
    }
    return $CBJCompEntityCopyWith<$Res>(_value.cBJCompEntity, (value) {
      return _then(_value.copyWith(cBJCompEntity: value));
    });
  }
}

/// @nodoc
class _$_CreateDevice implements _CreateDevice {
  const _$_CreateDevice(this.cBJCompEntity) : assert(cBJCompEntity != null);

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
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult watchAllStarted(),
    @required TResult changeAction(CBJCompEntity cBJCompEntity),
    @required
        TResult compDevicesReceived(
            Either<CBJCompFailure, String> failureOrCBJCompList),
    @required TResult create(CBJCompEntity cBJCompEntity),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return create(cBJCompEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult watchAllStarted(),
    TResult changeAction(CBJCompEntity cBJCompEntity),
    TResult compDevicesReceived(
        Either<CBJCompFailure, String> failureOrCBJCompList),
    TResult create(CBJCompEntity cBJCompEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(cBJCompEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult changeAction(_ChangeState value),
    @required TResult compDevicesReceived(_CompDevicesReceived value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(initialized != null);
    assert(watchAllStarted != null);
    assert(changeAction != null);
    assert(compDevicesReceived != null);
    assert(create != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult watchAllStarted(_WatchAllStarted value),
    TResult changeAction(_ChangeState value),
    TResult compDevicesReceived(_CompDevicesReceived value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateDevice implements CBJCompEvent {
  const factory _CreateDevice(CBJCompEntity cBJCompEntity) = _$_CreateDevice;

  CBJCompEntity get cBJCompEntity;
  @JsonKey(ignore: true)
  _$CreateDeviceCopyWith<_CreateDevice> get copyWith;
}

/// @nodoc
class _$CBJCompStateTearOff {
  const _$CBJCompStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(CBJCompEntity devices) {
    return _LoadSuccess(
      devices,
    );
  }

// ignore: unused_element
  _LoadSuccessTemp loadSuccessTemp() {
    return const _LoadSuccessTemp();
  }

// ignore: unused_element
  _loadFailure loadFailure(CBJCompFailure<dynamic> cBJCompFailure) {
    return _loadFailure(
      cBJCompFailure,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $CBJCompState = _$CBJCompStateTearOff();

/// @nodoc
mixin _$CBJCompState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
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
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
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
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object devices = freezed,
  }) {
    return _then(_LoadSuccess(
      devices == freezed ? _value.devices : devices as CBJCompEntity,
    ));
  }

  @override
  $CBJCompEntityCopyWith<$Res> get devices {
    if (_value.devices == null) {
      return null;
    }
    return $CBJCompEntityCopyWith<$Res>(_value.devices, (value) {
      return _then(_value.copyWith(devices: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.devices) : assert(devices != null);

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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccess(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
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
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CBJCompState {
  const factory _LoadSuccess(CBJCompEntity devices) = _$_LoadSuccess;

  CBJCompEntity get devices;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccessTemp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessTemp != null) {
      return loadSuccessTemp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccessTemp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object cBJCompFailure = freezed,
  }) {
    return _then(_loadFailure(
      cBJCompFailure == freezed
          ? _value.cBJCompFailure
          : cBJCompFailure as CBJCompFailure<dynamic>,
    ));
  }

  @override
  $CBJCompFailureCopyWith<dynamic, $Res> get cBJCompFailure {
    if (_value.cBJCompFailure == null) {
      return null;
    }
    return $CBJCompFailureCopyWith<dynamic, $Res>(_value.cBJCompFailure,
        (value) {
      return _then(_value.copyWith(cBJCompFailure: value));
    });
  }
}

/// @nodoc
class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.cBJCompFailure) : assert(cBJCompFailure != null);

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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(cBJCompFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(cBJCompFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements CBJCompState {
  const factory _loadFailure(CBJCompFailure<dynamic> cBJCompFailure) =
      _$_loadFailure;

  CBJCompFailure<dynamic> get cBJCompFailure;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(CBJCompEntity devices),
    @required TResult loadSuccessTemp(),
    @required TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(CBJCompEntity devices),
    TResult loadSuccessTemp(),
    TResult loadFailure(CBJCompFailure<dynamic> cBJCompFailure),
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
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadSuccessTemp(_LoadSuccessTemp value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadSuccessTemp != null);
    assert(loadFailure != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadSuccessTemp(_LoadSuccessTemp value),
    TResult loadFailure(_loadFailure value),
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

abstract class Error implements CBJCompState {
  const factory Error() = _$Error;
}
