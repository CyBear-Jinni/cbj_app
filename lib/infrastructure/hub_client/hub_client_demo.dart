import 'dart:async';
import 'dart:convert';

import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/scene/value_objects_scene_cbj.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/devices/device_helper.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/utils.dart';

class HubClientDemo {
  ///  Creates a stream with the Hub
  static Future createStreamWithHub() async {
    try {
      await firstConnection();
    } catch (e) {
      logger.e('Error in demo Hub\n$e');
    }
  }

  static Future<void> firstConnection() async {
    for (final RequestsAndStatusFromHub roomRequest in getAllRooms()) {
      HubRequestsToApp.hubRequestsStreamController.add(roomRequest);
    }

    for (final RequestsAndStatusFromHub devicesRequest in getAllDevices()) {
      HubRequestsToApp.hubRequestsStreamController.add(devicesRequest);
    }

    for (final RequestsAndStatusFromHub sceneRequest in getAllScenes()) {
      HubRequestsToApp.hubRequestsStreamController.add(sceneRequest);
    }
  }

  static List<RequestsAndStatusFromHub> getAllRooms() {
    final List<RequestsAndStatusFromHub> roomsList = [];

    const SendingType sendingTypeRoom = SendingType.roomType;

    /// Discovered Room

    final RoomEntity allRemoteCommandsRoomDiscovered = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('00000000-0000-0000-0000-000000000000'),
      cbjEntityName: RoomDefaultName('Discovered'),
      roomTypes: RoomTypes(const []),
      roomDevicesId:
          RoomDevicesId(const ['65d84b10-434d-11ed-817a-7d350fb52f91']),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomDiscovered =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: jsonEncode(
        allRemoteCommandsRoomDiscovered.toInfrastructure().toJson(),
      ),
    );
    roomsList.add(requestsAndStatusFromHubRoomDiscovered);

    /// Guy Room

    final RoomEntity allRemoteCommandsRoomGuy = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('23deb7f0-4193-11ed-9d1c-5747056d7848'),
      cbjEntityName: RoomDefaultName('Guy Room'),
      roomTypes: RoomTypes([
        AreaPurposesTypes.bedroom.value.toString(),
        AreaPurposesTypes.studyRoom.value.toString(),
        AreaPurposesTypes.workRoom.value.toString(),
        AreaPurposesTypes.videoGames.value.toString(),
      ]),
      roomDevicesId: RoomDevicesId(const [
        'a31523m6-463s-32ge-7426-g33c642r7m25',
        'c90137f2-419b-11ed-8246-e17a279f4d89',
        '96386cd0-419b-11ed-8246-e17a279f4d89',
      ]),
      roomScenesId:
          RoomScenesId(const ['01bd6880-419b-11ed-af10-f75196d26a5e']),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomGuy =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: jsonEncode(
        allRemoteCommandsRoomGuy.toInfrastructure().toJson(),
      ),
    );
    roomsList.add(requestsAndStatusFromHubRoomGuy);

    /// Out Side Room

    final RoomEntity allRemoteCommandsRoomOutSide = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('38b45780-419c-11ed-bce9-8dc09da0062f'),
      cbjEntityName: RoomDefaultName('Outside'),
      roomTypes: RoomTypes([
        AreaPurposesTypes.bedroom.value.toString(),
        AreaPurposesTypes.studyRoom.value.toString(),
        AreaPurposesTypes.workRoom.value.toString(),
        AreaPurposesTypes.livingRoom.value.toString(),
      ]),
      roomDevicesId:
          RoomDevicesId(const ['gcvweg3y-bv2s-cvwe-bdmf-7h4f3f2dw2d1']),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomOutSide =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: jsonEncode(
        allRemoteCommandsRoomOutSide.toInfrastructure().toJson(),
      ),
    );
    roomsList.add(requestsAndStatusFromHubRoomOutSide);

    /// Out Side Room

    final RoomEntity allRemoteCommandsRoomAmi = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('gai23tds-f3t7-vxa2-dvnn-hykkjty8567d'),
      cbjEntityName: RoomDefaultName('Ami Room'),
      roomTypes: RoomTypes([
        AreaPurposesTypes.bedroom.value.toString(),
        AreaPurposesTypes.studyRoom.value.toString(),
        AreaPurposesTypes.workRoom.value.toString(),
        AreaPurposesTypes.livingRoom.value.toString(),
      ]),
      roomDevicesId: RoomDevicesId(const [
        '7189ed76-4351-11ed-b249-63fd7e165c16',
        'sfds344t-sdf3-fd3d-24s4-bd2sdf3n5rfd',
        'wfdsg2w6-fgde-234s-vbz2-b234jmgvbfd6',
      ]),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomAmi =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: jsonEncode(
        allRemoteCommandsRoomAmi.toInfrastructure().toJson(),
      ),
    );
    roomsList.add(requestsAndStatusFromHubRoomAmi);

    return roomsList;
  }

  static List<RequestsAndStatusFromHub> getAllDevices() {
    final List<RequestsAndStatusFromHub> devicesList = [];

    const SendingType sendingTypeDevice = SendingType.entityType;

    /// Guy Blinds

    final GenericBlindsDE allRemoteCommandsBlinds = GenericBlindsDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('96386cd0-419b-11ed-8246-e17a279f4d89'),
      entityUniqueId: EntityUniqueId('63b298'),
      deviceVendor:
          DeviceVendor(VendorsAndServices.switcherSmartHome.toString()),
      cbjEntityName: CbjEntityName('Guy Blinds'),
      entityOriginalName: EntityOriginalName('Guy Blinds'),
      deviceOriginalName: DeviceOriginalName('Guy Blinds'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherRunner'),
      senderId: DeviceSenderId.fromUniqueString(
        '94edb282-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      blindsSwitchState:
          GenericBlindsSwitchState(EntityActions.stop.toString()),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('n5sdf1sf-df53-v2sd-ge46-hhjlywawq166'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBlinds =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBlinds),
    );

    devicesList.add(requestsAndStatusFromHubBlinds);

    /// Guy Ceiling Button

    final GenericSwitchDE allRemoteCommandsButton = GenericSwitchDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('c90137f2-419b-11ed-8246-e17a279f4d89'),
      entityUniqueId: EntityUniqueId('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor(VendorsAndServices.tuyaSmart.toString()),
      cbjEntityName: CbjEntityName('Guy Ceiling Button'),
      entityOriginalName: EntityOriginalName('Guy Ceiling Button'),
      deviceOriginalName: DeviceOriginalName('Guy Ceiling Button'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(EntityActions.on.toString()),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('b0gaseh2-u7f4-1g42-vdf2-dfnertaku3fs'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton),
    );
    devicesList.add(requestsAndStatusFromHubButton);

    /// Guy Button 2

    final GenericSwitchDE allRemoteCommandsButton2 = GenericSwitchDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('a31523m6-463s-32ge-7426-g33c642r7m25'),
      entityUniqueId: EntityUniqueId('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor(VendorsAndServices.tuyaSmart.toString()),
      cbjEntityName: CbjEntityName('Guy Bedroom Button'),
      entityOriginalName: EntityOriginalName('Guy Bedroom Button'),
      deviceOriginalName: DeviceOriginalName('Guy Bedroom Button'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(EntityActions.on.toString()),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('654wdf2u-rge2-ffh2-gn22-rthweru521rs'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton2),
    );
    devicesList.add(requestsAndStatusFromHubButton2);

    /// Boiler

    final GenericBoilerDE allRemoteCommandsBoiler = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f91'),
      entityUniqueId: EntityUniqueId('65fd2f'),
      deviceVendor:
          DeviceVendor(VendorsAndServices.switcherSmartHome.toString()),
      cbjEntityName: CbjEntityName('Boiler'),
      entityOriginalName: EntityOriginalName('Boiler'),
      deviceOriginalName: DeviceOriginalName('Boiler'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(EntityActions.off.toString()),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('id2erfdd-g34a-uhj5-fdfa-sdf5y3wsdfhs'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler),
    );
    devicesList.add(requestsAndStatusFromHubBoiler);

    /// RGBLight

    final GenericRgbwLightDE allRemoteCommandsRgbLight = GenericRgbwLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('7189ed76-4351-11ed-b249-63fd7e165c16'),
      entityUniqueId: EntityUniqueId('bf4bccdaf68347e31dhiut'),
      deviceVendor: DeviceVendor(VendorsAndServices.tuyaSmart.toString()),
      cbjEntityName: CbjEntityName('Dining Room Ceiling'),
      entityOriginalName: EntityOriginalName('Dining Room Ceiling'),
      deviceOriginalName: DeviceOriginalName('Dining Room Ceiling'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('tuya_smart'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        '7189ed77-4351-11ed-b249-63fd7e165c16',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      lightSwitchState:
          GenericRgbwLightSwitchState(EntityActions.off.toString()),
      lightBrightness: GenericRgbwLightBrightness('100'),
      lightColorAlpha: GenericRgbwLightColorAlpha('1.0'),
      lightColorHue: GenericRgbwLightColorHue('0.0'),
      lightColorSaturation: GenericRgbwLightColorSaturation('1.0'),
      lightColorTemperature: GenericRgbwLightColorTemperature('8129'),
      lightColorValue: GenericRgbwLightColorValue('1.0'),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('sd3fgbns-64as-1gd2-gfdw-dgghks325as6'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRgbLight =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsRgbLight),
    );
    devicesList.add(requestsAndStatusFromHubRgbLight);

    /// RGBLight

    final GenericDimmableLightDE allRemoteCommandsDimmableLight1 =
        GenericDimmableLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('sfds344t-sdf3-fd3d-24s4-bd2sdf3n5rfd'),
      entityUniqueId: EntityUniqueId('dn2fs1sgnxzzx34sh53qdf'),
      deviceVendor: DeviceVendor(VendorsAndServices.lifx.toString()),
      cbjEntityName: CbjEntityName('Dining Room Stove'),
      entityOriginalName: EntityOriginalName('Dining Room Light 1'),
      deviceOriginalName: DeviceOriginalName('Dining Room Light 1'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('lifx'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        'askf3gd7-nb21-fg2d-bvw9-xcbsd24sdgd6',
      ),
      compUuid: DeviceCompUuid('sn45sd1fcn5532d'),
      lightSwitchState:
          GenericDimmableLightSwitchState(EntityActions.off.toString()),
      lightBrightness: GenericDimmableLightBrightness('100'),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('dgh4nsdg-fd2d-df32-vn4g-dfgw2dvvnrrg'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubDimmableLight1 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: DeviceHelper.convertDomainToJsonString(
        allRemoteCommandsDimmableLight1,
      ),
    );
    devicesList.add(requestsAndStatusFromHubDimmableLight1);

    final GenericDimmableLightDE allRemoteCommandsDimmableLight2 =
        GenericDimmableLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('gcvweg3y-bv2s-cvwe-bdmf-7h4f3f2dw2d1'),
      entityUniqueId: EntityUniqueId('4gj76jykeg3fsdf2dsq11f'),
      deviceVendor: DeviceVendor(VendorsAndServices.lifx.toString()),
      cbjEntityName: CbjEntityName('Ami Room Ceiling'),
      entityOriginalName: EntityOriginalName('Ami Workshop Light'),
      deviceOriginalName: DeviceOriginalName('Ami Workshop Light'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('lifx'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        'f23gg2d2-h6j7-k8ky-6ugh-6t574ty47yj5',
      ),
      compUuid: DeviceCompUuid('dg23esbh4eghrer'),
      lightSwitchState:
          GenericDimmableLightSwitchState(EntityActions.off.toString()),
      lightBrightness: GenericDimmableLightBrightness('100'),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('nbfsgsdf-34f3-631w-125f-324f23567731'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubDimmableLight2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: DeviceHelper.convertDomainToJsonString(
        allRemoteCommandsDimmableLight2,
      ),
    );
    devicesList.add(requestsAndStatusFromHubDimmableLight2);

    /// Light

    final GenericLightDE allRemoteCommandsLight = GenericLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('wfdsg2w6-fgde-234s-vbz2-b234jmgvbfd6'),
      entityUniqueId: EntityUniqueId('cb3rdfh2ttgl9dgbvnsudt'),
      deviceVendor: DeviceVendor(VendorsAndServices.espHome.toString()),
      cbjEntityName: CbjEntityName('Dining Room Light 2'),
      entityOriginalName: EntityOriginalName('Dining Room Light 2'),
      deviceOriginalName: DeviceOriginalName('Dining Room Light 2'),
      entityStateGRPC: EntityState(EntityStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('espHome'),
      senderDeviceModel: DeviceSenderDeviceModel('esp8266'),
      senderId: DeviceSenderId.fromUniqueString(
        'ffb3rg2s-cvns-awre-bmkp-yityueyertbe',
      ),
      compUuid: DeviceCompUuid('erbvnr34yh4627i'),
      lightSwitchState: GenericLightSwitchState(EntityActions.off.toString()),
      powerConsumption: DevicePowerConsumption('0'),
      deviceUniqueId: DeviceUniqueId('deviceUniqueId'),
      devicePort: DevicePort('devicePort'),
      deviceLastKnownIp: DeviceLastKnownIp('deviceLastKnownIp'),
      deviceHostName: DeviceHostName('deviceHostName'),
      deviceMdns: DeviceMdns('deviceMdns'),
      devicesMacAddress: DevicesMacAddress('devicesMacAddress'),
      entityKey: EntityKey('entityKey'),
      requestTimeStamp: RequestTimeStamp('requestTimeStamp'),
      lastResponseFromDeviceTimeStamp:
          LastResponseFromDeviceTimeStamp('lastResponseFromDeviceTimeStamp'),
      deviceCbjUniqueId:
          CoreUniqueId.fromUniqueString('sgeryjmn-gfn3-bf3v-et24-fvd22445jng3'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubLight =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsLight),
    );
    devicesList.add(requestsAndStatusFromHubLight);

    return devicesList;
  }

  static List<RequestsAndStatusFromHub> getAllScenes() {
    final List<RequestsAndStatusFromHub> scenesList = [];

    const SendingType sendingTypeDevice = SendingType.sceneType;

    /// Study Scene

    final SceneCbjEntity allRemoteCommandsSceneOpen = SceneCbjEntity(
      uniqueId:
          UniqueId.fromUniqueString('01bd6880-419b-11ed-af10-f75196d26a5e'),
      name: SceneCbjName('Study Scene'),
      backgroundColor: SceneCbjBackgroundColor('0xFFFF9800'),
      nodeRedFlowId: SceneCbjNodeRedFlowId('6b63068c3c970eeb'),
      automationString: SceneCbjAutomationString('[]'),
      firstNodeId: SceneCbjFirstNodeId('3f1a9440-41a1-11ed-8b6a-5f136f4fe196'),
      iconCodePoint: SceneCbjIconCodePoint(null),
      image: SceneCbjBackgroundImage(null),
      lastDateOfExecute: SceneCbjLastDateOfExecute(null),
      stateMassage: SceneCbjStateMassage(null),
      senderDeviceOs: SceneCbjSenderDeviceOs(null),
      senderDeviceModel: SceneCbjSenderDeviceModel(null),
      senderId: SceneCbjSenderId(null),
      compUuid: SceneCbjCompUuid(null),
      entityStateGRPC: SceneCbjDeviceStateGRPC('waitingInComp'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubSceneOpen =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: jsonEncode(
        allRemoteCommandsSceneOpen.toInfrastructure().toJson(),
      ),
    );

    scenesList.add(requestsAndStatusFromHubSceneOpen);

    return scenesList;
  }

  ///  Get Hub computer and software info
  static Future<CompHubInfo?> getHubCompInfo(
    String addressToHub,
    int hubPort,
    CompHubInfo compHubInfo,
  ) async {
    return null;
  }
}
