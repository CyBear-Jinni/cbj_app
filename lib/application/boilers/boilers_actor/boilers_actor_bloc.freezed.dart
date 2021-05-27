// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'boilers_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoilersActorEventTearOff {
  const _$BoilersActorEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  _TurnOnAllBoilers turnOnAllBoilers(
      List<String?> boilersIdToTurnUp, BuildContext context) {
    return _TurnOnAllBoilers(
      boilersIdToTurnUp,
      context,
    );
  }

  _TurnOffAllBoilers turnOffAllBoilers(
      List<String?> boilersIdToTurnOff, BuildContext context) {
    return _TurnOffAllBoilers(
      boilersIdToTurnOff,
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
const $BoilersActorEvent = _$BoilersActorEventTearOff();

/// @nodoc
mixin _$BoilersActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String?> boilersIdToTurnUp, BuildContext context)
        turnOnAllBoilers,
    required TResult Function(
            List<String?> boilersIdToTurnOff, BuildContext context)
        turnOffAllBoilers,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String?> boilersIdToTurnUp, BuildContext context)?
        turnOnAllBoilers,
    TResult Function(List<String?> boilersIdToTurnOff, BuildContext context)?
        turnOffAllBoilers,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOnAllBoilers value) turnOnAllBoilers,
    required TResult Function(_TurnOffAllBoilers value) turnOffAllBoilers,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOnAllBoilers value)? turnOnAllBoilers,
    TResult Function(_TurnOffAllBoilers value)? turnOffAllBoilers,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String?> boilersIdToTurnUp, BuildContext context)
        turnOnAllBoilers,
    required TResult Function(
            List<String?> boilersIdToTurnOff, BuildContext context)
        turnOffAllBoilers,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String?> boilersIdToTurnUp, BuildContext context)?
        turnOnAllBoilers,
    TResult Function(List<String?> boilersIdToTurnOff, BuildContext context)?
        turnOffAllBoilers,
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
    required TResult Function(_TurnOnAllBoilers value) turnOnAllBoilers,
    required TResult Function(_TurnOffAllBoilers value) turnOffAllBoilers,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOnAllBoilers value)? turnOnAllBoilers,
    TResult Function(_TurnOffAllBoilers value)? turnOffAllBoilers,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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
  $Res call({List<String?> boilersIdToTurnUp, BuildContext context});
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
    Object? boilersIdToTurnUp = freezed,
    Object? context = freezed,
  }) {
    return _then(_TurnOnAllBoilers(
      boilersIdToTurnUp == freezed
          ? _value.boilersIdToTurnUp
          : boilersIdToTurnUp // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_TurnOnAllBoilers implements _TurnOnAllBoilers {
  const _$_TurnOnAllBoilers(this.boilersIdToTurnUp, this.context);

  @override
  final List<String?> boilersIdToTurnUp;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String?> boilersIdToTurnUp, BuildContext context)
        turnOnAllBoilers,
    required TResult Function(
            List<String?> boilersIdToTurnOff, BuildContext context)
        turnOffAllBoilers,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return turnOnAllBoilers(boilersIdToTurnUp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String?> boilersIdToTurnUp, BuildContext context)?
        turnOnAllBoilers,
    TResult Function(List<String?> boilersIdToTurnOff, BuildContext context)?
        turnOffAllBoilers,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) {
    if (turnOnAllBoilers != null) {
      return turnOnAllBoilers(boilersIdToTurnUp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOnAllBoilers value) turnOnAllBoilers,
    required TResult Function(_TurnOffAllBoilers value) turnOffAllBoilers,
    required TResult Function(_Deleted value) deleted,
  }) {
    return turnOnAllBoilers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOnAllBoilers value)? turnOnAllBoilers,
    TResult Function(_TurnOffAllBoilers value)? turnOffAllBoilers,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (turnOnAllBoilers != null) {
      return turnOnAllBoilers(this);
    }
    return orElse();
  }
}

abstract class _TurnOnAllBoilers implements BoilersActorEvent {
  const factory _TurnOnAllBoilers(
          List<String?> boilersIdToTurnUp, BuildContext context) =
      _$_TurnOnAllBoilers;

  List<String?> get boilersIdToTurnUp => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TurnOnAllBoilersCopyWith<_TurnOnAllBoilers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TurnOffAllBoilersCopyWith<$Res> {
  factory _$TurnOffAllBoilersCopyWith(
          _TurnOffAllBoilers value, $Res Function(_TurnOffAllBoilers) then) =
      __$TurnOffAllBoilersCopyWithImpl<$Res>;
  $Res call({List<String?> boilersIdToTurnOff, BuildContext context});
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
    Object? boilersIdToTurnOff = freezed,
    Object? context = freezed,
  }) {
    return _then(_TurnOffAllBoilers(
      boilersIdToTurnOff == freezed
          ? _value.boilersIdToTurnOff
          : boilersIdToTurnOff // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_TurnOffAllBoilers implements _TurnOffAllBoilers {
  const _$_TurnOffAllBoilers(this.boilersIdToTurnOff, this.context);

  @override
  final List<String?> boilersIdToTurnOff;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String?> boilersIdToTurnUp, BuildContext context)
        turnOnAllBoilers,
    required TResult Function(
            List<String?> boilersIdToTurnOff, BuildContext context)
        turnOffAllBoilers,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return turnOffAllBoilers(boilersIdToTurnOff, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String?> boilersIdToTurnUp, BuildContext context)?
        turnOnAllBoilers,
    TResult Function(List<String?> boilersIdToTurnOff, BuildContext context)?
        turnOffAllBoilers,
    TResult Function(DeviceEntity deviceEntity)? deleted,
    required TResult orElse(),
  }) {
    if (turnOffAllBoilers != null) {
      return turnOffAllBoilers(boilersIdToTurnOff, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_TurnOnAllBoilers value) turnOnAllBoilers,
    required TResult Function(_TurnOffAllBoilers value) turnOffAllBoilers,
    required TResult Function(_Deleted value) deleted,
  }) {
    return turnOffAllBoilers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOnAllBoilers value)? turnOnAllBoilers,
    TResult Function(_TurnOffAllBoilers value)? turnOffAllBoilers,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (turnOffAllBoilers != null) {
      return turnOffAllBoilers(this);
    }
    return orElse();
  }
}

abstract class _TurnOffAllBoilers implements BoilersActorEvent {
  const factory _TurnOffAllBoilers(
          List<String?> boilersIdToTurnOff, BuildContext context) =
      _$_TurnOffAllBoilers;

  List<String?> get boilersIdToTurnOff => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TurnOffAllBoilersCopyWith<_TurnOffAllBoilers> get copyWith =>
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
class __$DeletedCopyWithImpl<$Res> extends _$BoilersActorEventCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            List<String?> boilersIdToTurnUp, BuildContext context)
        turnOnAllBoilers,
    required TResult Function(
            List<String?> boilersIdToTurnOff, BuildContext context)
        turnOffAllBoilers,
    required TResult Function(DeviceEntity deviceEntity) deleted,
  }) {
    return deleted(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(List<String?> boilersIdToTurnUp, BuildContext context)?
        turnOnAllBoilers,
    TResult Function(List<String?> boilersIdToTurnOff, BuildContext context)?
        turnOffAllBoilers,
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
    required TResult Function(_TurnOnAllBoilers value) turnOnAllBoilers,
    required TResult Function(_TurnOffAllBoilers value) turnOffAllBoilers,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_TurnOnAllBoilers value)? turnOnAllBoilers,
    TResult Function(_TurnOffAllBoilers value)? turnOffAllBoilers,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements BoilersActorEvent {
  const factory _Deleted(DeviceEntity deviceEntity) = _$_Deleted;

  DeviceEntity get deviceEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoilersActorStateTearOff {
  const _$BoilersActorStateTearOff();

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
const $BoilersActorState = _$BoilersActorStateTearOff();

/// @nodoc
mixin _$BoilersActorState {
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

abstract class _DeleteFailure implements BoilersActorState {
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

abstract class _DeleteSuccess implements BoilersActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
