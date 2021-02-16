// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'light_toggle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LightToggleEventTearOff {
  const _$LightToggleEventTearOff();

// ignore: unused_element
  _ChangeState changeAction(DeviceEntity deviceEntity) {
    return _ChangeState(
      deviceEntity,
    );
  }

// ignore: unused_element
  _CreateDevice create(DeviceEntity deviceEntity) {
    return _CreateDevice(
      deviceEntity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LightToggleEvent = _$LightToggleEventTearOff();

/// @nodoc
mixin _$LightToggleEvent {
  DeviceEntity get deviceEntity;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeAction(DeviceEntity deviceEntity),
    @required TResult create(DeviceEntity deviceEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeAction(DeviceEntity deviceEntity),
    TResult create(DeviceEntity deviceEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeAction(_ChangeState value),
    @required TResult create(_CreateDevice value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeAction(_ChangeState value),
    TResult create(_CreateDevice value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LightToggleEventCopyWith<LightToggleEvent> get copyWith;
}

/// @nodoc
abstract class $LightToggleEventCopyWith<$Res> {
  factory $LightToggleEventCopyWith(
          LightToggleEvent value, $Res Function(LightToggleEvent) then) =
      _$LightToggleEventCopyWithImpl<$Res>;
  $Res call({DeviceEntity deviceEntity});

  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class _$LightToggleEventCopyWithImpl<$Res>
    implements $LightToggleEventCopyWith<$Res> {
  _$LightToggleEventCopyWithImpl(this._value, this._then);

  final LightToggleEvent _value;
  // ignore: unused_field
  final $Res Function(LightToggleEvent) _then;

  @override
  $Res call({
    Object deviceEntity = freezed,
  }) {
    return _then(_value.copyWith(
      deviceEntity: deviceEntity == freezed
          ? _value.deviceEntity
          : deviceEntity as DeviceEntity,
    ));
  }

  @override
  $DeviceEntityCopyWith<$Res> get deviceEntity {
    if (_value.deviceEntity == null) {
      return null;
    }
    return $DeviceEntityCopyWith<$Res>(_value.deviceEntity, (value) {
      return _then(_value.copyWith(deviceEntity: value));
    });
  }
}

/// @nodoc
abstract class _$ChangeStateCopyWith<$Res>
    implements $LightToggleEventCopyWith<$Res> {
  factory _$ChangeStateCopyWith(
          _ChangeState value, $Res Function(_ChangeState) then) =
      __$ChangeStateCopyWithImpl<$Res>;
  @override
  $Res call({DeviceEntity deviceEntity});

  @override
  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class __$ChangeStateCopyWithImpl<$Res>
    extends _$LightToggleEventCopyWithImpl<$Res>
    implements _$ChangeStateCopyWith<$Res> {
  __$ChangeStateCopyWithImpl(
      _ChangeState _value, $Res Function(_ChangeState) _then)
      : super(_value, (v) => _then(v as _ChangeState));

  @override
  _ChangeState get _value => super._value as _ChangeState;

  @override
  $Res call({
    Object deviceEntity = freezed,
  }) {
    return _then(_ChangeState(
      deviceEntity == freezed
          ? _value.deviceEntity
          : deviceEntity as DeviceEntity,
    ));
  }
}

/// @nodoc
class _$_ChangeState implements _ChangeState {
  const _$_ChangeState(this.deviceEntity) : assert(deviceEntity != null);

  @override
  final DeviceEntity deviceEntity;

  @override
  String toString() {
    return 'LightToggleEvent.changeAction(deviceEntity: $deviceEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeState &&
            (identical(other.deviceEntity, deviceEntity) ||
                const DeepCollectionEquality()
                    .equals(other.deviceEntity, deviceEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceEntity);

  @JsonKey(ignore: true)
  @override
  _$ChangeStateCopyWith<_ChangeState> get copyWith =>
      __$ChangeStateCopyWithImpl<_ChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeAction(DeviceEntity deviceEntity),
    @required TResult create(DeviceEntity deviceEntity),
  }) {
    assert(changeAction != null);
    assert(create != null);
    return changeAction(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeAction(DeviceEntity deviceEntity),
    TResult create(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAction != null) {
      return changeAction(deviceEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeAction(_ChangeState value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(changeAction != null);
    assert(create != null);
    return changeAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeAction(_ChangeState value),
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

abstract class _ChangeState implements LightToggleEvent {
  const factory _ChangeState(DeviceEntity deviceEntity) = _$_ChangeState;

  @override
  DeviceEntity get deviceEntity;
  @override
  @JsonKey(ignore: true)
  _$ChangeStateCopyWith<_ChangeState> get copyWith;
}

/// @nodoc
abstract class _$CreateDeviceCopyWith<$Res>
    implements $LightToggleEventCopyWith<$Res> {
  factory _$CreateDeviceCopyWith(
          _CreateDevice value, $Res Function(_CreateDevice) then) =
      __$CreateDeviceCopyWithImpl<$Res>;
  @override
  $Res call({DeviceEntity deviceEntity});

  @override
  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class __$CreateDeviceCopyWithImpl<$Res>
    extends _$LightToggleEventCopyWithImpl<$Res>
    implements _$CreateDeviceCopyWith<$Res> {
  __$CreateDeviceCopyWithImpl(
      _CreateDevice _value, $Res Function(_CreateDevice) _then)
      : super(_value, (v) => _then(v as _CreateDevice));

  @override
  _CreateDevice get _value => super._value as _CreateDevice;

  @override
  $Res call({
    Object deviceEntity = freezed,
  }) {
    return _then(_CreateDevice(
      deviceEntity == freezed
          ? _value.deviceEntity
          : deviceEntity as DeviceEntity,
    ));
  }
}

/// @nodoc
class _$_CreateDevice implements _CreateDevice {
  const _$_CreateDevice(this.deviceEntity) : assert(deviceEntity != null);

  @override
  final DeviceEntity deviceEntity;

  @override
  String toString() {
    return 'LightToggleEvent.create(deviceEntity: $deviceEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateDevice &&
            (identical(other.deviceEntity, deviceEntity) ||
                const DeepCollectionEquality()
                    .equals(other.deviceEntity, deviceEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceEntity);

  @JsonKey(ignore: true)
  @override
  _$CreateDeviceCopyWith<_CreateDevice> get copyWith =>
      __$CreateDeviceCopyWithImpl<_CreateDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeAction(DeviceEntity deviceEntity),
    @required TResult create(DeviceEntity deviceEntity),
  }) {
    assert(changeAction != null);
    assert(create != null);
    return create(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeAction(DeviceEntity deviceEntity),
    TResult create(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(deviceEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeAction(_ChangeState value),
    @required TResult create(_CreateDevice value),
  }) {
    assert(changeAction != null);
    assert(create != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeAction(_ChangeState value),
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

abstract class _CreateDevice implements LightToggleEvent {
  const factory _CreateDevice(DeviceEntity deviceEntity) = _$_CreateDevice;

  @override
  DeviceEntity get deviceEntity;
  @override
  @JsonKey(ignore: true)
  _$CreateDeviceCopyWith<_CreateDevice> get copyWith;
}

/// @nodoc
class _$LightToggleStateTearOff {
  const _$LightToggleStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _loadFailure loadFailure(DevicesFailure<dynamic> devicesFailure) {
    return _loadFailure(
      devicesFailure,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $LightToggleState = _$LightToggleStateTearOff();

/// @nodoc
mixin _$LightToggleState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LightToggleStateCopyWith<$Res> {
  factory $LightToggleStateCopyWith(
          LightToggleState value, $Res Function(LightToggleState) then) =
      _$LightToggleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LightToggleStateCopyWithImpl<$Res>
    implements $LightToggleStateCopyWith<$Res> {
  _$LightToggleStateCopyWithImpl(this._value, this._then);

  final LightToggleState _value;
  // ignore: unused_field
  final $Res Function(LightToggleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LightToggleStateCopyWithImpl<$Res>
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
    return 'LightToggleState.initial()';
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
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
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
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
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

abstract class _Initial implements LightToggleState {
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
    extends _$LightToggleStateCopyWithImpl<$Res>
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
    return 'LightToggleState.loadInProgress()';
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
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
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
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
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

abstract class _LoadInProgress implements LightToggleState {
  const factory _LoadInProgress() = _$_LoadInProgress;
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
    extends _$LightToggleStateCopyWithImpl<$Res>
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
    return 'LightToggleState.loadFailure(devicesFailure: $devicesFailure)';
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
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    TResult error(),
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
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
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

abstract class _loadFailure implements LightToggleState {
  const factory _loadFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_loadFailure;

  DevicesFailure<dynamic> get devicesFailure;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$LightToggleStateCopyWithImpl<$Res>
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
    return 'LightToggleState.error()';
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
    @required TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadFailure(DevicesFailure<dynamic> devicesFailure),
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
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFailure != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
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

abstract class Error implements LightToggleState {
  const factory Error() = _$Error;
}
