// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lights_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LightsActorEventTearOff {
  const _$LightsActorEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  _TurnOffAllLights turnOffAllLights(
      List<String> lightsIdToTurnOff, BuildContext context) {
    return _TurnOffAllLights(
      lightsIdToTurnOff,
      context,
    );
  }

// ignore: unused_element
  _TurnOnAllLights turnOnAllLights(
      List<String> lightsIdToTurnOn, BuildContext context) {
    return _TurnOnAllLights(
      lightsIdToTurnOn,
      context,
    );
  }

// ignore: unused_element
  _Deleted deleted(DeviceEntity deviceEntity) {
    return _Deleted(
      deviceEntity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LightsActorEvent = _$LightsActorEventTearOff();

/// @nodoc
mixin _$LightsActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOffAllLights(
            List<String> lightsIdToTurnOff, BuildContext context),
    @required
        TResult turnOnAllLights(
            List<String> lightsIdToTurnOn, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOffAllLights(
        List<String> lightsIdToTurnOff, BuildContext context),
    TResult turnOnAllLights(
        List<String> lightsIdToTurnOn, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOffAllLights(_TurnOffAllLights value),
    @required TResult turnOnAllLights(_TurnOnAllLights value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOffAllLights(_TurnOffAllLights value),
    TResult turnOnAllLights(_TurnOnAllLights value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LightsActorEventCopyWith<$Res> {
  factory $LightsActorEventCopyWith(
          LightsActorEvent value, $Res Function(LightsActorEvent) then) =
      _$LightsActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LightsActorEventCopyWithImpl<$Res>
    implements $LightsActorEventCopyWith<$Res> {
  _$LightsActorEventCopyWithImpl(this._value, this._then);

  final LightsActorEvent _value;
  // ignore: unused_field
  final $Res Function(LightsActorEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$LightsActorEventCopyWithImpl<$Res>
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
    return 'LightsActorEvent.initialized()';
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
    @required
        TResult turnOffAllLights(
            List<String> lightsIdToTurnOff, BuildContext context),
    @required
        TResult turnOnAllLights(
            List<String> lightsIdToTurnOn, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOffAllLights(
        List<String> lightsIdToTurnOff, BuildContext context),
    TResult turnOnAllLights(
        List<String> lightsIdToTurnOn, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
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
    @required TResult turnOffAllLights(_TurnOffAllLights value),
    @required TResult turnOnAllLights(_TurnOnAllLights value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOffAllLights(_TurnOffAllLights value),
    TResult turnOnAllLights(_TurnOnAllLights value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements LightsActorEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$TurnOffAllLightsCopyWith<$Res> {
  factory _$TurnOffAllLightsCopyWith(
          _TurnOffAllLights value, $Res Function(_TurnOffAllLights) then) =
      __$TurnOffAllLightsCopyWithImpl<$Res>;
  $Res call({List<String> lightsIdToTurnOff, BuildContext context});
}

/// @nodoc
class __$TurnOffAllLightsCopyWithImpl<$Res>
    extends _$LightsActorEventCopyWithImpl<$Res>
    implements _$TurnOffAllLightsCopyWith<$Res> {
  __$TurnOffAllLightsCopyWithImpl(
      _TurnOffAllLights _value, $Res Function(_TurnOffAllLights) _then)
      : super(_value, (v) => _then(v as _TurnOffAllLights));

  @override
  _TurnOffAllLights get _value => super._value as _TurnOffAllLights;

  @override
  $Res call({
    Object lightsIdToTurnOff = freezed,
    Object context = freezed,
  }) {
    return _then(_TurnOffAllLights(
      lightsIdToTurnOff == freezed
          ? _value.lightsIdToTurnOff
          : lightsIdToTurnOff as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_TurnOffAllLights implements _TurnOffAllLights {
  const _$_TurnOffAllLights(this.lightsIdToTurnOff, this.context)
      : assert(lightsIdToTurnOff != null),
        assert(context != null);

  @override
  final List<String> lightsIdToTurnOff;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LightsActorEvent.turnOffAllLights(lightsIdToTurnOff: $lightsIdToTurnOff, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOffAllLights &&
            (identical(other.lightsIdToTurnOff, lightsIdToTurnOff) ||
                const DeepCollectionEquality()
                    .equals(other.lightsIdToTurnOff, lightsIdToTurnOff)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lightsIdToTurnOff) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$TurnOffAllLightsCopyWith<_TurnOffAllLights> get copyWith =>
      __$TurnOffAllLightsCopyWithImpl<_TurnOffAllLights>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOffAllLights(
            List<String> lightsIdToTurnOff, BuildContext context),
    @required
        TResult turnOnAllLights(
            List<String> lightsIdToTurnOn, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return turnOffAllLights(lightsIdToTurnOff, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOffAllLights(
        List<String> lightsIdToTurnOff, BuildContext context),
    TResult turnOnAllLights(
        List<String> lightsIdToTurnOn, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOffAllLights != null) {
      return turnOffAllLights(lightsIdToTurnOff, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOffAllLights(_TurnOffAllLights value),
    @required TResult turnOnAllLights(_TurnOnAllLights value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return turnOffAllLights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOffAllLights(_TurnOffAllLights value),
    TResult turnOnAllLights(_TurnOnAllLights value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOffAllLights != null) {
      return turnOffAllLights(this);
    }
    return orElse();
  }
}

abstract class _TurnOffAllLights implements LightsActorEvent {
  const factory _TurnOffAllLights(
          List<String> lightsIdToTurnOff, BuildContext context) =
      _$_TurnOffAllLights;

  List<String> get lightsIdToTurnOff;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$TurnOffAllLightsCopyWith<_TurnOffAllLights> get copyWith;
}

/// @nodoc
abstract class _$TurnOnAllLightsCopyWith<$Res> {
  factory _$TurnOnAllLightsCopyWith(
          _TurnOnAllLights value, $Res Function(_TurnOnAllLights) then) =
      __$TurnOnAllLightsCopyWithImpl<$Res>;
  $Res call({List<String> lightsIdToTurnOn, BuildContext context});
}

/// @nodoc
class __$TurnOnAllLightsCopyWithImpl<$Res>
    extends _$LightsActorEventCopyWithImpl<$Res>
    implements _$TurnOnAllLightsCopyWith<$Res> {
  __$TurnOnAllLightsCopyWithImpl(
      _TurnOnAllLights _value, $Res Function(_TurnOnAllLights) _then)
      : super(_value, (v) => _then(v as _TurnOnAllLights));

  @override
  _TurnOnAllLights get _value => super._value as _TurnOnAllLights;

  @override
  $Res call({
    Object lightsIdToTurnOn = freezed,
    Object context = freezed,
  }) {
    return _then(_TurnOnAllLights(
      lightsIdToTurnOn == freezed
          ? _value.lightsIdToTurnOn
          : lightsIdToTurnOn as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_TurnOnAllLights implements _TurnOnAllLights {
  const _$_TurnOnAllLights(this.lightsIdToTurnOn, this.context)
      : assert(lightsIdToTurnOn != null),
        assert(context != null);

  @override
  final List<String> lightsIdToTurnOn;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LightsActorEvent.turnOnAllLights(lightsIdToTurnOn: $lightsIdToTurnOn, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOnAllLights &&
            (identical(other.lightsIdToTurnOn, lightsIdToTurnOn) ||
                const DeepCollectionEquality()
                    .equals(other.lightsIdToTurnOn, lightsIdToTurnOn)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lightsIdToTurnOn) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$TurnOnAllLightsCopyWith<_TurnOnAllLights> get copyWith =>
      __$TurnOnAllLightsCopyWithImpl<_TurnOnAllLights>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOffAllLights(
            List<String> lightsIdToTurnOff, BuildContext context),
    @required
        TResult turnOnAllLights(
            List<String> lightsIdToTurnOn, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return turnOnAllLights(lightsIdToTurnOn, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOffAllLights(
        List<String> lightsIdToTurnOff, BuildContext context),
    TResult turnOnAllLights(
        List<String> lightsIdToTurnOn, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOnAllLights != null) {
      return turnOnAllLights(lightsIdToTurnOn, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOffAllLights(_TurnOffAllLights value),
    @required TResult turnOnAllLights(_TurnOnAllLights value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return turnOnAllLights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOffAllLights(_TurnOffAllLights value),
    TResult turnOnAllLights(_TurnOnAllLights value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOnAllLights != null) {
      return turnOnAllLights(this);
    }
    return orElse();
  }
}

abstract class _TurnOnAllLights implements LightsActorEvent {
  const factory _TurnOnAllLights(
      List<String> lightsIdToTurnOn, BuildContext context) = _$_TurnOnAllLights;

  List<String> get lightsIdToTurnOn;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$TurnOnAllLightsCopyWith<_TurnOnAllLights> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({DeviceEntity deviceEntity});

  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$LightsActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object deviceEntity = freezed,
  }) {
    return _then(_Deleted(
      deviceEntity == freezed
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
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.deviceEntity) : assert(deviceEntity != null);

  @override
  final DeviceEntity deviceEntity;

  @override
  String toString() {
    return 'LightsActorEvent.deleted(deviceEntity: $deviceEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.deviceEntity, deviceEntity) ||
                const DeepCollectionEquality()
                    .equals(other.deviceEntity, deviceEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceEntity);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOffAllLights(
            List<String> lightsIdToTurnOff, BuildContext context),
    @required
        TResult turnOnAllLights(
            List<String> lightsIdToTurnOn, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return deleted(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOffAllLights(
        List<String> lightsIdToTurnOff, BuildContext context),
    TResult turnOnAllLights(
        List<String> lightsIdToTurnOn, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(deviceEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOffAllLights(_TurnOffAllLights value),
    @required TResult turnOnAllLights(_TurnOnAllLights value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOffAllLights != null);
    assert(turnOnAllLights != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOffAllLights(_TurnOffAllLights value),
    TResult turnOnAllLights(_TurnOnAllLights value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements LightsActorEvent {
  const factory _Deleted(DeviceEntity deviceEntity) = _$_Deleted;

  DeviceEntity get deviceEntity;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$LightsActorStateTearOff {
  const _$LightsActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(DevicesFailure<dynamic> devicesFailure) {
    return _DeleteFailure(
      devicesFailure,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $LightsActorState = _$LightsActorStateTearOff();

/// @nodoc
mixin _$LightsActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult deleteSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LightsActorStateCopyWith<$Res> {
  factory $LightsActorStateCopyWith(
          LightsActorState value, $Res Function(LightsActorState) then) =
      _$LightsActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LightsActorStateCopyWithImpl<$Res>
    implements $LightsActorStateCopyWith<$Res> {
  _$LightsActorStateCopyWithImpl(this._value, this._then);

  final LightsActorState _value;
  // ignore: unused_field
  final $Res Function(LightsActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LightsActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LightsActorState.initial()';
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
    @required TResult actionInProgress(),
    @required TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    TResult deleteSuccess(),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LightsActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$LightsActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'LightsActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements LightsActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({DevicesFailure<dynamic> devicesFailure});

  $DevicesFailureCopyWith<dynamic, $Res> get devicesFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$LightsActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object devicesFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.devicesFailure) : assert(devicesFailure != null);

  @override
  final DevicesFailure<dynamic> devicesFailure;

  @override
  String toString() {
    return 'LightsActorState.deleteFailure(devicesFailure: $devicesFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
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
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(devicesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements LightsActorState {
  const factory _DeleteFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_DeleteFailure;

  DevicesFailure<dynamic> get devicesFailure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$LightsActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'LightsActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteFailure(DevicesFailure<dynamic> devicesFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements LightsActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
