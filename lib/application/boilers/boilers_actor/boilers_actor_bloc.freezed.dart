// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'boilers_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoilersActorEventTearOff {
  const _$BoilersActorEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  _TurnOnAllBoilers turnOnAllBoilers(
      List<String> boilersIdToTurnUp, BuildContext context) {
    return _TurnOnAllBoilers(
      boilersIdToTurnUp,
      context,
    );
  }

// ignore: unused_element
  _TurnOffAllBoilers turnOffAllBoilers(
      List<String> boilersIdToTurnOff, BuildContext context) {
    return _TurnOffAllBoilers(
      boilersIdToTurnOff,
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
const $BoilersActorEvent = _$BoilersActorEventTearOff();

/// @nodoc
mixin _$BoilersActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOnAllBoilers(
            List<String> boilersIdToTurnUp, BuildContext context),
    @required
        TResult turnOffAllBoilers(
            List<String> boilersIdToTurnOff, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOnAllBoilers(
        List<String> boilersIdToTurnUp, BuildContext context),
    TResult turnOffAllBoilers(
        List<String> boilersIdToTurnOff, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    @required TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoilersActorEventCopyWith<$Res> {
  factory $BoilersActorEventCopyWith(
          BoilersActorEvent value, $Res Function(BoilersActorEvent) then) =
      _$BoilersActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoilersActorEventCopyWithImpl<$Res>
    implements $BoilersActorEventCopyWith<$Res> {
  _$BoilersActorEventCopyWithImpl(this._value, this._then);

  final BoilersActorEvent _value;
  // ignore: unused_field
  final $Res Function(BoilersActorEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$BoilersActorEventCopyWithImpl<$Res>
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
    return 'BoilersActorEvent.initialized()';
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
        TResult turnOnAllBoilers(
            List<String> boilersIdToTurnUp, BuildContext context),
    @required
        TResult turnOffAllBoilers(
            List<String> boilersIdToTurnOff, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOnAllBoilers(
        List<String> boilersIdToTurnUp, BuildContext context),
    TResult turnOffAllBoilers(
        List<String> boilersIdToTurnOff, BuildContext context),
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
    @required TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    @required TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    TResult turnOffAllBoilers(_TurnOffAllBoilers value),
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

abstract class Initialized implements BoilersActorEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$TurnOnAllBoilersCopyWith<$Res> {
  factory _$TurnOnAllBoilersCopyWith(
          _TurnOnAllBoilers value, $Res Function(_TurnOnAllBoilers) then) =
      __$TurnOnAllBoilersCopyWithImpl<$Res>;
  $Res call({List<String> boilersIdToTurnUp, BuildContext context});
}

/// @nodoc
class __$TurnOnAllBoilersCopyWithImpl<$Res>
    extends _$BoilersActorEventCopyWithImpl<$Res>
    implements _$TurnOnAllBoilersCopyWith<$Res> {
  __$TurnOnAllBoilersCopyWithImpl(
      _TurnOnAllBoilers _value, $Res Function(_TurnOnAllBoilers) _then)
      : super(_value, (v) => _then(v as _TurnOnAllBoilers));

  @override
  _TurnOnAllBoilers get _value => super._value as _TurnOnAllBoilers;

  @override
  $Res call({
    Object boilersIdToTurnUp = freezed,
    Object context = freezed,
  }) {
    return _then(_TurnOnAllBoilers(
      boilersIdToTurnUp == freezed
          ? _value.boilersIdToTurnUp
          : boilersIdToTurnUp as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_TurnOnAllBoilers implements _TurnOnAllBoilers {
  const _$_TurnOnAllBoilers(this.boilersIdToTurnUp, this.context)
      : assert(boilersIdToTurnUp != null),
        assert(context != null);

  @override
  final List<String> boilersIdToTurnUp;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BoilersActorEvent.turnOnAllBoilers(boilersIdToTurnUp: $boilersIdToTurnUp, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOnAllBoilers &&
            (identical(other.boilersIdToTurnUp, boilersIdToTurnUp) ||
                const DeepCollectionEquality()
                    .equals(other.boilersIdToTurnUp, boilersIdToTurnUp)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(boilersIdToTurnUp) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$TurnOnAllBoilersCopyWith<_TurnOnAllBoilers> get copyWith =>
      __$TurnOnAllBoilersCopyWithImpl<_TurnOnAllBoilers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOnAllBoilers(
            List<String> boilersIdToTurnUp, BuildContext context),
    @required
        TResult turnOffAllBoilers(
            List<String> boilersIdToTurnOff, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return turnOnAllBoilers(boilersIdToTurnUp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOnAllBoilers(
        List<String> boilersIdToTurnUp, BuildContext context),
    TResult turnOffAllBoilers(
        List<String> boilersIdToTurnOff, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOnAllBoilers != null) {
      return turnOnAllBoilers(boilersIdToTurnUp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    @required TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return turnOnAllBoilers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOnAllBoilers != null) {
      return turnOnAllBoilers(this);
    }
    return orElse();
  }
}

abstract class _TurnOnAllBoilers implements BoilersActorEvent {
  const factory _TurnOnAllBoilers(
          List<String> boilersIdToTurnUp, BuildContext context) =
      _$_TurnOnAllBoilers;

  List<String> get boilersIdToTurnUp;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$TurnOnAllBoilersCopyWith<_TurnOnAllBoilers> get copyWith;
}

/// @nodoc
abstract class _$TurnOffAllBoilersCopyWith<$Res> {
  factory _$TurnOffAllBoilersCopyWith(
          _TurnOffAllBoilers value, $Res Function(_TurnOffAllBoilers) then) =
      __$TurnOffAllBoilersCopyWithImpl<$Res>;
  $Res call({List<String> boilersIdToTurnOff, BuildContext context});
}

/// @nodoc
class __$TurnOffAllBoilersCopyWithImpl<$Res>
    extends _$BoilersActorEventCopyWithImpl<$Res>
    implements _$TurnOffAllBoilersCopyWith<$Res> {
  __$TurnOffAllBoilersCopyWithImpl(
      _TurnOffAllBoilers _value, $Res Function(_TurnOffAllBoilers) _then)
      : super(_value, (v) => _then(v as _TurnOffAllBoilers));

  @override
  _TurnOffAllBoilers get _value => super._value as _TurnOffAllBoilers;

  @override
  $Res call({
    Object boilersIdToTurnOff = freezed,
    Object context = freezed,
  }) {
    return _then(_TurnOffAllBoilers(
      boilersIdToTurnOff == freezed
          ? _value.boilersIdToTurnOff
          : boilersIdToTurnOff as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_TurnOffAllBoilers implements _TurnOffAllBoilers {
  const _$_TurnOffAllBoilers(this.boilersIdToTurnOff, this.context)
      : assert(boilersIdToTurnOff != null),
        assert(context != null);

  @override
  final List<String> boilersIdToTurnOff;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BoilersActorEvent.turnOffAllBoilers(boilersIdToTurnOff: $boilersIdToTurnOff, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOffAllBoilers &&
            (identical(other.boilersIdToTurnOff, boilersIdToTurnOff) ||
                const DeepCollectionEquality()
                    .equals(other.boilersIdToTurnOff, boilersIdToTurnOff)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(boilersIdToTurnOff) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$TurnOffAllBoilersCopyWith<_TurnOffAllBoilers> get copyWith =>
      __$TurnOffAllBoilersCopyWithImpl<_TurnOffAllBoilers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult turnOnAllBoilers(
            List<String> boilersIdToTurnUp, BuildContext context),
    @required
        TResult turnOffAllBoilers(
            List<String> boilersIdToTurnOff, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return turnOffAllBoilers(boilersIdToTurnOff, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOnAllBoilers(
        List<String> boilersIdToTurnUp, BuildContext context),
    TResult turnOffAllBoilers(
        List<String> boilersIdToTurnOff, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOffAllBoilers != null) {
      return turnOffAllBoilers(boilersIdToTurnOff, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    @required TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return turnOffAllBoilers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (turnOffAllBoilers != null) {
      return turnOffAllBoilers(this);
    }
    return orElse();
  }
}

abstract class _TurnOffAllBoilers implements BoilersActorEvent {
  const factory _TurnOffAllBoilers(
          List<String> boilersIdToTurnOff, BuildContext context) =
      _$_TurnOffAllBoilers;

  List<String> get boilersIdToTurnOff;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$TurnOffAllBoilersCopyWith<_TurnOffAllBoilers> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({DeviceEntity deviceEntity});

  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$BoilersActorEventCopyWithImpl<$Res>
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
    return 'BoilersActorEvent.deleted(deviceEntity: $deviceEntity)';
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
        TResult turnOnAllBoilers(
            List<String> boilersIdToTurnUp, BuildContext context),
    @required
        TResult turnOffAllBoilers(
            List<String> boilersIdToTurnOff, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return deleted(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult turnOnAllBoilers(
        List<String> boilersIdToTurnUp, BuildContext context),
    TResult turnOffAllBoilers(
        List<String> boilersIdToTurnOff, BuildContext context),
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
    @required TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    @required TResult turnOffAllBoilers(_TurnOffAllBoilers value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(turnOnAllBoilers != null);
    assert(turnOffAllBoilers != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult turnOnAllBoilers(_TurnOnAllBoilers value),
    TResult turnOffAllBoilers(_TurnOffAllBoilers value),
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

abstract class _Deleted implements BoilersActorEvent {
  const factory _Deleted(DeviceEntity deviceEntity) = _$_Deleted;

  DeviceEntity get deviceEntity;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$BoilersActorStateTearOff {
  const _$BoilersActorStateTearOff();

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
const $BoilersActorState = _$BoilersActorStateTearOff();

/// @nodoc
mixin _$BoilersActorState {
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
abstract class $BoilersActorStateCopyWith<$Res> {
  factory $BoilersActorStateCopyWith(
          BoilersActorState value, $Res Function(BoilersActorState) then) =
      _$BoilersActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoilersActorStateCopyWithImpl<$Res>
    implements $BoilersActorStateCopyWith<$Res> {
  _$BoilersActorStateCopyWithImpl(this._value, this._then);

  final BoilersActorState _value;
  // ignore: unused_field
  final $Res Function(BoilersActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BoilersActorStateCopyWithImpl<$Res>
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
    return 'BoilersActorState.initial()';
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

abstract class _Initial implements BoilersActorState {
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
    extends _$BoilersActorStateCopyWithImpl<$Res>
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
    return 'BoilersActorState.actionInProgress()';
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

abstract class _ActionInProgress implements BoilersActorState {
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
    extends _$BoilersActorStateCopyWithImpl<$Res>
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
    return 'BoilersActorState.deleteFailure(devicesFailure: $devicesFailure)';
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

abstract class _DeleteFailure implements BoilersActorState {
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
    extends _$BoilersActorStateCopyWithImpl<$Res>
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
    return 'BoilersActorState.deleteSuccess()';
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

abstract class _DeleteSuccess implements BoilersActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
