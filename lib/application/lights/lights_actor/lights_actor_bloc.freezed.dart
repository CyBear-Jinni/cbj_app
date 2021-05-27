// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lights_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LightsActorEventTearOff {
  const _$LightsActorEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  _TurnOffAllLights turnOffAllLights(
      List<String> lightsIdToTurnOff, BuildContext context) {
    return _TurnOffAllLights(
      lightsIdToTurnOff,
      context,
    );
  }

  _TurnOnAllLights turnOnAllLights(
      List<String> lightsIdToTurnOn, BuildContext context) {
    return _TurnOnAllLights(
      lightsIdToTurnOn,
      context,
    );
  }

  _Deleted deleted(DeviceEntity deviceEntity) {
    return _Deleted(
      deviceEntity,
    );
  }
}

/// @nodoc
const $LightsActorEvent = _$LightsActorEventTearOff();

/// @nodoc
mixin _$LightsActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String> lightsIdToTurnOff, BuildContext context)
        turnOffAllLights,
    required TResult Function(
            List<String> lightsIdToTurnOn, BuildContext context)
        turnOnAllLights,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String> lightsIdToTurnOff, BuildContext context)?
        turnOffAllLights,
    TResult Function(List<String> lightsIdToTurnOn, BuildContext context)?
        turnOnAllLights,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOffAllLights value) turnOffAllLights,
    required TResult Function(_TurnOnAllLights value) turnOnAllLights,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOffAllLights value)? turnOffAllLights,
    TResult Function(_TurnOnAllLights value)? turnOnAllLights,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String> lightsIdToTurnOff, BuildContext context)
        turnOffAllLights,
    required TResult Function(
            List<String> lightsIdToTurnOn, BuildContext context)
        turnOnAllLights,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String> lightsIdToTurnOff, BuildContext context)?
        turnOffAllLights,
    TResult Function(List<String> lightsIdToTurnOn, BuildContext context)?
        turnOnAllLights,
    TResult Function(DeviceEntity deviceEntity)? deleted,
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
    required TResult Function(_TurnOffAllLights value) turnOffAllLights,
    required TResult Function(_TurnOnAllLights value) turnOnAllLights,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOffAllLights value)? turnOffAllLights,
    TResult Function(_TurnOnAllLights value)? turnOnAllLights,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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
    Object? lightsIdToTurnOff = freezed,
    Object? context = freezed,
  }) {
    return _then(_TurnOffAllLights(
      lightsIdToTurnOff == freezed
          ? _value.lightsIdToTurnOff
          : lightsIdToTurnOff // ignore: cast_nullable_to_non_nullable
              as List<String>,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_TurnOffAllLights implements _TurnOffAllLights {
  const _$_TurnOffAllLights(this.lightsIdToTurnOff, this.context);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String> lightsIdToTurnOff, BuildContext context)
        turnOffAllLights,
    required TResult Function(
            List<String> lightsIdToTurnOn, BuildContext context)
        turnOnAllLights,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return turnOffAllLights(lightsIdToTurnOff, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String> lightsIdToTurnOff, BuildContext context)?
        turnOffAllLights,
    TResult Function(List<String> lightsIdToTurnOn, BuildContext context)?
        turnOnAllLights,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) {
    if (turnOffAllLights != null) {
      return turnOffAllLights(lightsIdToTurnOff, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOffAllLights value) turnOffAllLights,
    required TResult Function(_TurnOnAllLights value) turnOnAllLights,
    required TResult Function(_Deleted value) deleted,
  }) {
    return turnOffAllLights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOffAllLights value)? turnOffAllLights,
    TResult Function(_TurnOnAllLights value)? turnOnAllLights,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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

  List<String> get lightsIdToTurnOff => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TurnOffAllLightsCopyWith<_TurnOffAllLights> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? lightsIdToTurnOn = freezed,
    Object? context = freezed,
  }) {
    return _then(_TurnOnAllLights(
      lightsIdToTurnOn == freezed
          ? _value.lightsIdToTurnOn
          : lightsIdToTurnOn // ignore: cast_nullable_to_non_nullable
              as List<String>,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_TurnOnAllLights implements _TurnOnAllLights {
  const _$_TurnOnAllLights(this.lightsIdToTurnOn, this.context);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String> lightsIdToTurnOff, BuildContext context)
        turnOffAllLights,
    required TResult Function(
            List<String> lightsIdToTurnOn, BuildContext context)
        turnOnAllLights,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return turnOnAllLights(lightsIdToTurnOn, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String> lightsIdToTurnOff, BuildContext context)?
        turnOffAllLights,
    TResult Function(List<String> lightsIdToTurnOn, BuildContext context)?
        turnOnAllLights,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) {
    if (turnOnAllLights != null) {
      return turnOnAllLights(lightsIdToTurnOn, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOffAllLights value) turnOffAllLights,
    required TResult Function(_TurnOnAllLights value) turnOnAllLights,
    required TResult Function(_Deleted value) deleted,
  }) {
    return turnOnAllLights(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOffAllLights value)? turnOffAllLights,
    TResult Function(_TurnOnAllLights value)? turnOnAllLights,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (turnOnAllLights != null) {
      return turnOnAllLights(this);
    }
    return orElse();
  }
}

abstract class _TurnOnAllLights implements LightsActorEvent {
  const factory _TurnOnAllLights(
      List<String> lightsIdToTurnOn, BuildContext context) = _$_TurnOnAllLights;

  List<String> get lightsIdToTurnOn => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TurnOnAllLightsCopyWith<_TurnOnAllLights> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? deviceEntity = freezed,
  }) {
    return _then(_Deleted(
      deviceEntity == freezed
          ? _value.deviceEntity
          : deviceEntity // ignore: cast_nullable_to_non_nullable
              as DeviceEntity,
    ));
  }

  @override
  $DeviceEntityCopyWith<$Res> get deviceEntity {
    return $DeviceEntityCopyWith<$Res>(_value.deviceEntity, (value) {
      return _then(_value.copyWith(deviceEntity: value));
    });
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.deviceEntity);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String> lightsIdToTurnOff, BuildContext context)
        turnOffAllLights,
    required TResult Function(
            List<String> lightsIdToTurnOn, BuildContext context)
        turnOnAllLights,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return deleted(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String> lightsIdToTurnOff, BuildContext context)?
        turnOffAllLights,
    TResult Function(List<String> lightsIdToTurnOn, BuildContext context)?
        turnOnAllLights,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(deviceEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOffAllLights value) turnOffAllLights,
    required TResult Function(_TurnOnAllLights value) turnOnAllLights,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOffAllLights value)? turnOffAllLights,
    TResult Function(_TurnOnAllLights value)? turnOnAllLights,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements LightsActorEvent {
  const factory _Deleted(DeviceEntity deviceEntity) = _$_Deleted;

  DeviceEntity get deviceEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LightsActorStateTearOff {
  const _$LightsActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteFailure deleteFailure(DevicesFailure<dynamic> devicesFailure) {
    return _DeleteFailure(
      devicesFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
const $LightsActorState = _$LightsActorStateTearOff();

/// @nodoc
mixin _$LightsActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
    Object? devicesFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.devicesFailure);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(devicesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(devicesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements LightsActorState {
  const factory _DeleteFailure(DevicesFailure<dynamic> devicesFailure) =
      _$_DeleteFailure;

  DevicesFailure<dynamic> get devicesFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DevicesFailure<dynamic> devicesFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DevicesFailure<dynamic> devicesFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements LightsActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
