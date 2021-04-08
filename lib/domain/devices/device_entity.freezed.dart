// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceEntityTearOff {
  const _$DeviceEntityTearOff();

// ignore: unused_element
  _DeviceEnitie call(
      {@required DeviceUniqueId id,
      @required DeviceDefaultName defaultName,
      @required DeviceUniqueId roomId,
      @required DeviceState state,
      DeviceStateMassage stateMassage,
      @required DeviceSenderDeviceOs senderDeviceOs,
      @required DeviceSenderDeviceModel senderDeviceModel,
      @required DeviceSenderId senderId,
      @required DeviceAction action,
      @required DeviceType type,
      @required DeviceCompUuid compUuid,
      DeviceLastKnownIp lastKnownIp}) {
    return _DeviceEnitie(
      id: id,
      defaultName: defaultName,
      roomId: roomId,
      state: state,
      stateMassage: stateMassage,
      senderDeviceOs: senderDeviceOs,
      senderDeviceModel: senderDeviceModel,
      senderId: senderId,
      action: action,
      type: type,
      compUuid: compUuid,
      lastKnownIp: lastKnownIp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceEntity = _$DeviceEntityTearOff();

/// @nodoc
mixin _$DeviceEntity {
  /// The smart device id
  DeviceUniqueId get id;

  /// The default name of the device
  DeviceDefaultName get defaultName;

  /// Room id that the smart device located in.
  DeviceUniqueId get roomId;

  /// Did the massage arrived or was it just sent.
  /// Currently will be 'set' (need change) or 'ack' for acknowledge
  /// (the action was reseved and executed correctly
  DeviceState get state;

  /// If state didn't change the error discription will be found here.
  DeviceStateMassage get stateMassage;

  /// Sender device os type, example: android, iphone, browser
  DeviceSenderDeviceOs get senderDeviceOs;

  /// The sender device model, example: onePlues 3T
  DeviceSenderDeviceModel get senderDeviceModel;

  /// Last device sender id that activated the action
  DeviceSenderId get senderId;

  /// What action to execute
  DeviceAction get action;

  /// The smart device type
  DeviceType get type;
  DeviceCompUuid get compUuid;
  DeviceLastKnownIp get lastKnownIp;

  @JsonKey(ignore: true)
  $DeviceEntityCopyWith<DeviceEntity> get copyWith;
}

/// @nodoc
abstract class $DeviceEntityCopyWith<$Res> {
  factory $DeviceEntityCopyWith(
          DeviceEntity value, $Res Function(DeviceEntity) then) =
      _$DeviceEntityCopyWithImpl<$Res>;
  $Res call(
      {DeviceUniqueId id,
      DeviceDefaultName defaultName,
      DeviceUniqueId roomId,
      DeviceState state,
      DeviceStateMassage stateMassage,
      DeviceSenderDeviceOs senderDeviceOs,
      DeviceSenderDeviceModel senderDeviceModel,
      DeviceSenderId senderId,
      DeviceAction action,
      DeviceType type,
      DeviceCompUuid compUuid,
      DeviceLastKnownIp lastKnownIp});
}

/// @nodoc
class _$DeviceEntityCopyWithImpl<$Res> implements $DeviceEntityCopyWith<$Res> {
  _$DeviceEntityCopyWithImpl(this._value, this._then);

  final DeviceEntity _value;
  // ignore: unused_field
  final $Res Function(DeviceEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object stateMassage = freezed,
    Object senderDeviceOs = freezed,
    Object senderDeviceModel = freezed,
    Object senderId = freezed,
    Object action = freezed,
    Object type = freezed,
    Object compUuid = freezed,
    Object lastKnownIp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as DeviceUniqueId,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName as DeviceDefaultName,
      roomId: roomId == freezed ? _value.roomId : roomId as DeviceUniqueId,
      state: state == freezed ? _value.state : state as DeviceState,
      stateMassage: stateMassage == freezed
          ? _value.stateMassage
          : stateMassage as DeviceStateMassage,
      senderDeviceOs: senderDeviceOs == freezed
          ? _value.senderDeviceOs
          : senderDeviceOs as DeviceSenderDeviceOs,
      senderDeviceModel: senderDeviceModel == freezed
          ? _value.senderDeviceModel
          : senderDeviceModel as DeviceSenderDeviceModel,
      senderId:
          senderId == freezed ? _value.senderId : senderId as DeviceSenderId,
      action: action == freezed ? _value.action : action as DeviceAction,
      type: type == freezed ? _value.type : type as DeviceType,
      compUuid:
          compUuid == freezed ? _value.compUuid : compUuid as DeviceCompUuid,
      lastKnownIp: lastKnownIp == freezed
          ? _value.lastKnownIp
          : lastKnownIp as DeviceLastKnownIp,
    ));
  }
}

/// @nodoc
abstract class _$DeviceEnitieCopyWith<$Res>
    implements $DeviceEntityCopyWith<$Res> {
  factory _$DeviceEnitieCopyWith(
          _DeviceEnitie value, $Res Function(_DeviceEnitie) then) =
      __$DeviceEnitieCopyWithImpl<$Res>;
  @override
  $Res call(
      {DeviceUniqueId id,
      DeviceDefaultName defaultName,
      DeviceUniqueId roomId,
      DeviceState state,
      DeviceStateMassage stateMassage,
      DeviceSenderDeviceOs senderDeviceOs,
      DeviceSenderDeviceModel senderDeviceModel,
      DeviceSenderId senderId,
      DeviceAction action,
      DeviceType type,
      DeviceCompUuid compUuid,
      DeviceLastKnownIp lastKnownIp});
}

/// @nodoc
class __$DeviceEnitieCopyWithImpl<$Res> extends _$DeviceEntityCopyWithImpl<$Res>
    implements _$DeviceEnitieCopyWith<$Res> {
  __$DeviceEnitieCopyWithImpl(
      _DeviceEnitie _value, $Res Function(_DeviceEnitie) _then)
      : super(_value, (v) => _then(v as _DeviceEnitie));

  @override
  _DeviceEnitie get _value => super._value as _DeviceEnitie;

  @override
  $Res call({
    Object id = freezed,
    Object defaultName = freezed,
    Object roomId = freezed,
    Object state = freezed,
    Object stateMassage = freezed,
    Object senderDeviceOs = freezed,
    Object senderDeviceModel = freezed,
    Object senderId = freezed,
    Object action = freezed,
    Object type = freezed,
    Object compUuid = freezed,
    Object lastKnownIp = freezed,
  }) {
    return _then(_DeviceEnitie(
      id: id == freezed ? _value.id : id as DeviceUniqueId,
      defaultName: defaultName == freezed
          ? _value.defaultName
          : defaultName as DeviceDefaultName,
      roomId: roomId == freezed ? _value.roomId : roomId as DeviceUniqueId,
      state: state == freezed ? _value.state : state as DeviceState,
      stateMassage: stateMassage == freezed
          ? _value.stateMassage
          : stateMassage as DeviceStateMassage,
      senderDeviceOs: senderDeviceOs == freezed
          ? _value.senderDeviceOs
          : senderDeviceOs as DeviceSenderDeviceOs,
      senderDeviceModel: senderDeviceModel == freezed
          ? _value.senderDeviceModel
          : senderDeviceModel as DeviceSenderDeviceModel,
      senderId:
          senderId == freezed ? _value.senderId : senderId as DeviceSenderId,
      action: action == freezed ? _value.action : action as DeviceAction,
      type: type == freezed ? _value.type : type as DeviceType,
      compUuid:
          compUuid == freezed ? _value.compUuid : compUuid as DeviceCompUuid,
      lastKnownIp: lastKnownIp == freezed
          ? _value.lastKnownIp
          : lastKnownIp as DeviceLastKnownIp,
    ));
  }
}

/// @nodoc
class _$_DeviceEnitie extends _DeviceEnitie {
  const _$_DeviceEnitie(
      {@required this.id,
      @required this.defaultName,
      @required this.roomId,
      @required this.state,
      this.stateMassage,
      @required this.senderDeviceOs,
      @required this.senderDeviceModel,
      @required this.senderId,
      @required this.action,
      @required this.type,
      @required this.compUuid,
      this.lastKnownIp})
      : assert(id != null),
        assert(defaultName != null),
        assert(roomId != null),
        assert(state != null),
        assert(senderDeviceOs != null),
        assert(senderDeviceModel != null),
        assert(senderId != null),
        assert(action != null),
        assert(type != null),
        assert(compUuid != null),
        super._();

  @override

  /// The smart device id
  final DeviceUniqueId id;
  @override

  /// The default name of the device
  final DeviceDefaultName defaultName;
  @override

  /// Room id that the smart device located in.
  final DeviceUniqueId roomId;
  @override

  /// Did the massage arrived or was it just sent.
  /// Currently will be 'set' (need change) or 'ack' for acknowledge
  /// (the action was reseved and executed correctly
  final DeviceState state;
  @override

  /// If state didn't change the error discription will be found here.
  final DeviceStateMassage stateMassage;
  @override

  /// Sender device os type, example: android, iphone, browser
  final DeviceSenderDeviceOs senderDeviceOs;
  @override

  /// The sender device model, example: onePlues 3T
  final DeviceSenderDeviceModel senderDeviceModel;
  @override

  /// Last device sender id that activated the action
  final DeviceSenderId senderId;
  @override

  /// What action to execute
  final DeviceAction action;
  @override

  /// The smart device type
  final DeviceType type;
  @override
  final DeviceCompUuid compUuid;
  @override
  final DeviceLastKnownIp lastKnownIp;

  @override
  String toString() {
    return 'DeviceEntity(id: $id, defaultName: $defaultName, roomId: $roomId, state: $state, stateMassage: $stateMassage, senderDeviceOs: $senderDeviceOs, senderDeviceModel: $senderDeviceModel, senderId: $senderId, action: $action, type: $type, compUuid: $compUuid, lastKnownIp: $lastKnownIp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceEnitie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.defaultName, defaultName) ||
                const DeepCollectionEquality()
                    .equals(other.defaultName, defaultName)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateMassage, stateMassage) ||
                const DeepCollectionEquality()
                    .equals(other.stateMassage, stateMassage)) &&
            (identical(other.senderDeviceOs, senderDeviceOs) ||
                const DeepCollectionEquality()
                    .equals(other.senderDeviceOs, senderDeviceOs)) &&
            (identical(other.senderDeviceModel, senderDeviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.senderDeviceModel, senderDeviceModel)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.compUuid, compUuid) ||
                const DeepCollectionEquality()
                    .equals(other.compUuid, compUuid)) &&
            (identical(other.lastKnownIp, lastKnownIp) ||
                const DeepCollectionEquality()
                    .equals(other.lastKnownIp, lastKnownIp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(defaultName) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateMassage) ^
      const DeepCollectionEquality().hash(senderDeviceOs) ^
      const DeepCollectionEquality().hash(senderDeviceModel) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(compUuid) ^
      const DeepCollectionEquality().hash(lastKnownIp);

  @JsonKey(ignore: true)
  @override
  _$DeviceEnitieCopyWith<_DeviceEnitie> get copyWith =>
      __$DeviceEnitieCopyWithImpl<_DeviceEnitie>(this, _$identity);
}

abstract class _DeviceEnitie extends DeviceEntity {
  const _DeviceEnitie._() : super._();
  const factory _DeviceEnitie(
      {@required DeviceUniqueId id,
      @required DeviceDefaultName defaultName,
      @required DeviceUniqueId roomId,
      @required DeviceState state,
      DeviceStateMassage stateMassage,
      @required DeviceSenderDeviceOs senderDeviceOs,
      @required DeviceSenderDeviceModel senderDeviceModel,
      @required DeviceSenderId senderId,
      @required DeviceAction action,
      @required DeviceType type,
      @required DeviceCompUuid compUuid,
      DeviceLastKnownIp lastKnownIp}) = _$_DeviceEnitie;

  @override

  /// The smart device id
  DeviceUniqueId get id;
  @override

  /// The default name of the device
  DeviceDefaultName get defaultName;
  @override

  /// Room id that the smart device located in.
  DeviceUniqueId get roomId;
  @override

  /// Did the massage arrived or was it just sent.
  /// Currently will be 'set' (need change) or 'ack' for acknowledge
  /// (the action was reseved and executed correctly
  DeviceState get state;
  @override

  /// If state didn't change the error discription will be found here.
  DeviceStateMassage get stateMassage;
  @override

  /// Sender device os type, example: android, iphone, browser
  DeviceSenderDeviceOs get senderDeviceOs;
  @override

  /// The sender device model, example: onePlues 3T
  DeviceSenderDeviceModel get senderDeviceModel;
  @override

  /// Last device sender id that activated the action
  DeviceSenderId get senderId;
  @override

  /// What action to execute
  DeviceAction get action;
  @override

  /// The smart device type
  DeviceType get type;
  @override
  DeviceCompUuid get compUuid;
  @override
  DeviceLastKnownIp get lastKnownIp;
  @override
  @JsonKey(ignore: true)
  _$DeviceEnitieCopyWith<_DeviceEnitie> get copyWith;
}
