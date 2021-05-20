// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'blinds_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BlindsActorEventTearOff {
  const _$BlindsActorEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  _MoveUpAllBlinds moveUpAllBlinds(
      List<String> blindsIdToTurnUp, BuildContext context) {
    return _MoveUpAllBlinds(
      blindsIdToTurnUp,
      context,
    );
  }

// ignore: unused_element
  _StopAllBlinds stopAllBlinds(
      List<String> blindsIdToStop, BuildContext context) {
    return _StopAllBlinds(
      blindsIdToStop,
      context,
    );
  }

// ignore: unused_element
  _MoveDownAllBlinds moveDownAllBlinds(
      List<String> blindsIdToTurnDown, BuildContext context) {
    return _MoveDownAllBlinds(
      blindsIdToTurnDown,
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
const $BlindsActorEvent = _$BlindsActorEventTearOff();

/// @nodoc
mixin _$BlindsActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BlindsActorEventCopyWith<$Res> {
  factory $BlindsActorEventCopyWith(
          BlindsActorEvent value, $Res Function(BlindsActorEvent) then) =
      _$BlindsActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlindsActorEventCopyWithImpl<$Res>
    implements $BlindsActorEventCopyWith<$Res> {
  _$BlindsActorEventCopyWithImpl(this._value, this._then);

  final BlindsActorEvent _value;
  // ignore: unused_field
  final $Res Function(BlindsActorEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$BlindsActorEventCopyWithImpl<$Res>
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
    return 'BlindsActorEvent.initialized()';
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
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
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
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
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

abstract class Initialized implements BlindsActorEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$MoveUpAllBlindsCopyWith<$Res> {
  factory _$MoveUpAllBlindsCopyWith(
          _MoveUpAllBlinds value, $Res Function(_MoveUpAllBlinds) then) =
      __$MoveUpAllBlindsCopyWithImpl<$Res>;
  $Res call({List<String> blindsIdToTurnUp, BuildContext context});
}

/// @nodoc
class __$MoveUpAllBlindsCopyWithImpl<$Res>
    extends _$BlindsActorEventCopyWithImpl<$Res>
    implements _$MoveUpAllBlindsCopyWith<$Res> {
  __$MoveUpAllBlindsCopyWithImpl(
      _MoveUpAllBlinds _value, $Res Function(_MoveUpAllBlinds) _then)
      : super(_value, (v) => _then(v as _MoveUpAllBlinds));

  @override
  _MoveUpAllBlinds get _value => super._value as _MoveUpAllBlinds;

  @override
  $Res call({
    Object blindsIdToTurnUp = freezed,
    Object context = freezed,
  }) {
    return _then(_MoveUpAllBlinds(
      blindsIdToTurnUp == freezed
          ? _value.blindsIdToTurnUp
          : blindsIdToTurnUp as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_MoveUpAllBlinds implements _MoveUpAllBlinds {
  const _$_MoveUpAllBlinds(this.blindsIdToTurnUp, this.context)
      : assert(blindsIdToTurnUp != null),
        assert(context != null);

  @override
  final List<String> blindsIdToTurnUp;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BlindsActorEvent.moveUpAllBlinds(blindsIdToTurnUp: $blindsIdToTurnUp, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoveUpAllBlinds &&
            (identical(other.blindsIdToTurnUp, blindsIdToTurnUp) ||
                const DeepCollectionEquality()
                    .equals(other.blindsIdToTurnUp, blindsIdToTurnUp)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blindsIdToTurnUp) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$MoveUpAllBlindsCopyWith<_MoveUpAllBlinds> get copyWith =>
      __$MoveUpAllBlindsCopyWithImpl<_MoveUpAllBlinds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return moveUpAllBlinds(blindsIdToTurnUp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveUpAllBlinds != null) {
      return moveUpAllBlinds(blindsIdToTurnUp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return moveUpAllBlinds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveUpAllBlinds != null) {
      return moveUpAllBlinds(this);
    }
    return orElse();
  }
}

abstract class _MoveUpAllBlinds implements BlindsActorEvent {
  const factory _MoveUpAllBlinds(
      List<String> blindsIdToTurnUp, BuildContext context) = _$_MoveUpAllBlinds;

  List<String> get blindsIdToTurnUp;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$MoveUpAllBlindsCopyWith<_MoveUpAllBlinds> get copyWith;
}

/// @nodoc
abstract class _$StopAllBlindsCopyWith<$Res> {
  factory _$StopAllBlindsCopyWith(
          _StopAllBlinds value, $Res Function(_StopAllBlinds) then) =
      __$StopAllBlindsCopyWithImpl<$Res>;
  $Res call({List<String> blindsIdToStop, BuildContext context});
}

/// @nodoc
class __$StopAllBlindsCopyWithImpl<$Res>
    extends _$BlindsActorEventCopyWithImpl<$Res>
    implements _$StopAllBlindsCopyWith<$Res> {
  __$StopAllBlindsCopyWithImpl(
      _StopAllBlinds _value, $Res Function(_StopAllBlinds) _then)
      : super(_value, (v) => _then(v as _StopAllBlinds));

  @override
  _StopAllBlinds get _value => super._value as _StopAllBlinds;

  @override
  $Res call({
    Object blindsIdToStop = freezed,
    Object context = freezed,
  }) {
    return _then(_StopAllBlinds(
      blindsIdToStop == freezed
          ? _value.blindsIdToStop
          : blindsIdToStop as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_StopAllBlinds implements _StopAllBlinds {
  const _$_StopAllBlinds(this.blindsIdToStop, this.context)
      : assert(blindsIdToStop != null),
        assert(context != null);

  @override
  final List<String> blindsIdToStop;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BlindsActorEvent.stopAllBlinds(blindsIdToStop: $blindsIdToStop, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopAllBlinds &&
            (identical(other.blindsIdToStop, blindsIdToStop) ||
                const DeepCollectionEquality()
                    .equals(other.blindsIdToStop, blindsIdToStop)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blindsIdToStop) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$StopAllBlindsCopyWith<_StopAllBlinds> get copyWith =>
      __$StopAllBlindsCopyWithImpl<_StopAllBlinds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return stopAllBlinds(blindsIdToStop, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stopAllBlinds != null) {
      return stopAllBlinds(blindsIdToStop, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return stopAllBlinds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stopAllBlinds != null) {
      return stopAllBlinds(this);
    }
    return orElse();
  }
}

abstract class _StopAllBlinds implements BlindsActorEvent {
  const factory _StopAllBlinds(
      List<String> blindsIdToStop, BuildContext context) = _$_StopAllBlinds;

  List<String> get blindsIdToStop;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$StopAllBlindsCopyWith<_StopAllBlinds> get copyWith;
}

/// @nodoc
abstract class _$MoveDownAllBlindsCopyWith<$Res> {
  factory _$MoveDownAllBlindsCopyWith(
          _MoveDownAllBlinds value, $Res Function(_MoveDownAllBlinds) then) =
      __$MoveDownAllBlindsCopyWithImpl<$Res>;
  $Res call({List<String> blindsIdToTurnDown, BuildContext context});
}

/// @nodoc
class __$MoveDownAllBlindsCopyWithImpl<$Res>
    extends _$BlindsActorEventCopyWithImpl<$Res>
    implements _$MoveDownAllBlindsCopyWith<$Res> {
  __$MoveDownAllBlindsCopyWithImpl(
      _MoveDownAllBlinds _value, $Res Function(_MoveDownAllBlinds) _then)
      : super(_value, (v) => _then(v as _MoveDownAllBlinds));

  @override
  _MoveDownAllBlinds get _value => super._value as _MoveDownAllBlinds;

  @override
  $Res call({
    Object blindsIdToTurnDown = freezed,
    Object context = freezed,
  }) {
    return _then(_MoveDownAllBlinds(
      blindsIdToTurnDown == freezed
          ? _value.blindsIdToTurnDown
          : blindsIdToTurnDown as List<String>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_MoveDownAllBlinds implements _MoveDownAllBlinds {
  const _$_MoveDownAllBlinds(this.blindsIdToTurnDown, this.context)
      : assert(blindsIdToTurnDown != null),
        assert(context != null);

  @override
  final List<String> blindsIdToTurnDown;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BlindsActorEvent.moveDownAllBlinds(blindsIdToTurnDown: $blindsIdToTurnDown, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoveDownAllBlinds &&
            (identical(other.blindsIdToTurnDown, blindsIdToTurnDown) ||
                const DeepCollectionEquality()
                    .equals(other.blindsIdToTurnDown, blindsIdToTurnDown)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blindsIdToTurnDown) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$MoveDownAllBlindsCopyWith<_MoveDownAllBlinds> get copyWith =>
      __$MoveDownAllBlindsCopyWithImpl<_MoveDownAllBlinds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return moveDownAllBlinds(blindsIdToTurnDown, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
    TResult deleted(DeviceEntity deviceEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveDownAllBlinds != null) {
      return moveDownAllBlinds(blindsIdToTurnDown, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return moveDownAllBlinds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moveDownAllBlinds != null) {
      return moveDownAllBlinds(this);
    }
    return orElse();
  }
}

abstract class _MoveDownAllBlinds implements BlindsActorEvent {
  const factory _MoveDownAllBlinds(
          List<String> blindsIdToTurnDown, BuildContext context) =
      _$_MoveDownAllBlinds;

  List<String> get blindsIdToTurnDown;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$MoveDownAllBlindsCopyWith<_MoveDownAllBlinds> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({DeviceEntity deviceEntity});

  $DeviceEntityCopyWith<$Res> get deviceEntity;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$BlindsActorEventCopyWithImpl<$Res>
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
    return 'BlindsActorEvent.deleted(deviceEntity: $deviceEntity)';
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
        TResult moveUpAllBlinds(
            List<String> blindsIdToTurnUp, BuildContext context),
    @required
        TResult stopAllBlinds(
            List<String> blindsIdToStop, BuildContext context),
    @required
        TResult moveDownAllBlinds(
            List<String> blindsIdToTurnDown, BuildContext context),
    @required TResult deleted(DeviceEntity deviceEntity),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return deleted(deviceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult moveUpAllBlinds(
        List<String> blindsIdToTurnUp, BuildContext context),
    TResult stopAllBlinds(List<String> blindsIdToStop, BuildContext context),
    TResult moveDownAllBlinds(
        List<String> blindsIdToTurnDown, BuildContext context),
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
    @required TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    @required TResult stopAllBlinds(_StopAllBlinds value),
    @required TResult moveDownAllBlinds(_MoveDownAllBlinds value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(moveUpAllBlinds != null);
    assert(stopAllBlinds != null);
    assert(moveDownAllBlinds != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult moveUpAllBlinds(_MoveUpAllBlinds value),
    TResult stopAllBlinds(_StopAllBlinds value),
    TResult moveDownAllBlinds(_MoveDownAllBlinds value),
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

abstract class _Deleted implements BlindsActorEvent {
  const factory _Deleted(DeviceEntity deviceEntity) = _$_Deleted;

  DeviceEntity get deviceEntity;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$BlindsActorStateTearOff {
  const _$BlindsActorStateTearOff();

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
const $BlindsActorState = _$BlindsActorStateTearOff();

/// @nodoc
mixin _$BlindsActorState {
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
abstract class $BlindsActorStateCopyWith<$Res> {
  factory $BlindsActorStateCopyWith(
          BlindsActorState value, $Res Function(BlindsActorState) then) =
      _$BlindsActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlindsActorStateCopyWithImpl<$Res>
    implements $BlindsActorStateCopyWith<$Res> {
  _$BlindsActorStateCopyWithImpl(this._value, this._then);

  final BlindsActorState _value;
  // ignore: unused_field
  final $Res Function(BlindsActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BlindsActorStateCopyWithImpl<$Res>
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
    return 'BlindsActorState.initial()';
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

abstract class _Initial implements BlindsActorState {
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
    extends _$BlindsActorStateCopyWithImpl<$Res>
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
    return 'BlindsActorState.actionInProgress()';
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

abstract class _ActionInProgress implements BlindsActorState {
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
    extends _$BlindsActorStateCopyWithImpl<$Res>
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
    return 'BlindsActorState.deleteFailure(devicesFailure: $devicesFailure)';
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

abstract class _DeleteFailure implements BlindsActorState {
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
    extends _$BlindsActorStateCopyWithImpl<$Res>
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
    return 'BlindsActorState.deleteSuccess()';
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

abstract class _DeleteSuccess implements BlindsActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
