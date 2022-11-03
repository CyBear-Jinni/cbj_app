import 'dart:async';
import 'dart:convert';

import 'package:cybear_jinni/application/remote_pipes/remote_pipes_bloc.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_value_objects.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_value_objects.dart';
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
      await Future.delayed(const Duration(milliseconds: 400));
    }

    for (final RequestsAndStatusFromHub devicesRequest in getAllDevices()) {
      HubRequestsToApp.hubRequestsStreamController.add(devicesRequest);
      await Future.delayed(const Duration(milliseconds: 400));
    }

    for (final RequestsAndStatusFromHub sceneRequest in getAllScenes()) {
      HubRequestsToApp.hubRequestsStreamController.add(sceneRequest);
      await Future.delayed(const Duration(milliseconds: 400));
    }
  }

  static List<RequestsAndStatusFromHub> getAllRooms() {
    final List<RequestsAndStatusFromHub> roomsList = [];

    const SendingType sendingTypeRoom = SendingType.roomType;

    /// Discovered Room

    final RoomEntity allRemoteCommandsRoomDiscovered = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('00000000-0000-0000-0000-000000000000'),
      defaultName: RoomDefaultName('Discovered 1234556789'),
      roomTypes: RoomTypes(const []),
      roomDevicesId:
          RoomDevicesId(const ['65d84b10-434d-11ed-817a-7d350fb52f91']),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
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
      defaultName: RoomDefaultName('Guy Room 1234556789'),
      roomTypes: RoomTypes(const ['0', '1', '2', '4']),
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
        'https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
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
      defaultName: RoomDefaultName('Outside 1234556789 1234556789'),
      roomTypes: RoomTypes(const ['0', '1', '2', '5']),
      roomDevicesId:
          RoomDevicesId(const ['7189ed76-4351-11ed-b249-63fd7e165c16']),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
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

    return roomsList;
  }

  static List<RequestsAndStatusFromHub> getAllDevices() {
    final List<RequestsAndStatusFromHub> devicesList = [];

    const SendingType sendingTypeDevice = SendingType.deviceType;

    /// Guy Blinds

    final GenericBlindsDE allRemoteCommandsBlinds = GenericBlindsDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('96386cd0-419b-11ed-8246-e17a279f4d89'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('63b298'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Guy Blinds 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherRunner'),
      senderId: DeviceSenderId.fromUniqueString(
        '94edb282-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      blindsSwitchState:
          GenericBlindsSwitchState(DeviceActions.stop.toString()),
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
      vendorUniqueId: VendorUniqueId.fromUniqueString('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Guy Ceiling Button 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(DeviceActions.on.toString()),
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
      vendorUniqueId: VendorUniqueId.fromUniqueString('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Guy Bedroom Button 123456789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(DeviceActions.on.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton2),
    );
    devicesList.add(requestsAndStatusFromHubButton2);

    final GenericSwitchDE allRemoteCommandsButton3 = GenericSwitchDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('a31523m6-463s-32ge-7426-g33c642r7m22'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Guy Bedroom Button 123456789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(DeviceActions.on.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton3 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton3),
    );
    devicesList.add(requestsAndStatusFromHubButton3);

    final GenericSwitchDE allRemoteCommandsButton4 = GenericSwitchDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('a31523m6-463s-32ge-7426-g33c642r7m2w'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Guy Bedroom Button 123456789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(DeviceActions.on.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton4 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton4),
    );
    devicesList.add(requestsAndStatusFromHubButton4);

    final GenericSwitchDE allRemoteCommandsButton5 = GenericSwitchDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('a31523m6-463s-32ge-7426-g33c642r7m26'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('67600068c44f33f5b515'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Guy Bedroom Button 123456789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel: DeviceSenderDeviceModel('Cloud'),
      senderId: DeviceSenderId.fromUniqueString(
        '90d20fc3-434a-11ed-bd96-f573a00b65aa',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      switchState: GenericSwitchSwitchState(DeviceActions.on.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton5 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton5),
    );
    devicesList.add(requestsAndStatusFromHubButton5);

    /// Boiler

    final GenericBoilerDE allRemoteCommandsBoiler = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f91'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler 1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler),
    );
    devicesList.add(requestsAndStatusFromHubBoiler);

    final GenericBoilerDE allRemoteCommandsBoiler2 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f92'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler  2  1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler2),
    );
    devicesList.add(requestsAndStatusFromHubBoiler2);

    final GenericBoilerDE allRemoteCommandsBoiler3 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f93'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler 3 1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler3 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler3),
    );
    devicesList.add(requestsAndStatusFromHubBoiler3);

    final GenericBoilerDE allRemoteCommandsBoiler4 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f94'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler 4 1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler4 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler4),
    );
    devicesList.add(requestsAndStatusFromHubBoiler4);

    final GenericBoilerDE allRemoteCommandsBoiler5 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-7d350fb52f91'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler 5 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler5 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler5),
    );
    devicesList.add(requestsAndStatusFromHubBoiler5);

    final GenericBoilerDE allRemoteCommandsBoiler6 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-434d-11ed-817a-2d350fb52f92'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler  2  1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler6 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler6),
    );
    devicesList.add(requestsAndStatusFromHubBoiler6);

    final GenericBoilerDE allRemoteCommandsBoiler7 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('65d84b10-r34d-11ed-817a-7d350fb52f92'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler  2  1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler7 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler7),
    );
    devicesList.add(requestsAndStatusFromHubBoiler7);

    final GenericBoilerDE allRemoteCommandsBoiler8 = GenericBoilerDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('e5d84b10-434d-11ed-817a-7d350fb52f92'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('65fd2f'),
      deviceVendor: DeviceVendor('switcherSmartHome'),
      defaultName: DeviceDefaultName('Boiler  2  1234556789 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('switcher'),
      senderDeviceModel:
          DeviceSenderDeviceModel('SwitcherDevicesTypes.switcherV2Esp'),
      senderId: DeviceSenderId.fromUniqueString(
        '65d84b11-434d-11ed-817a-7d350fb52f91',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      boilerSwitchState: GenericBoilerSwitchState(DeviceActions.off.toString()),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler8 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBoiler8),
    );
    devicesList.add(requestsAndStatusFromHubBoiler8);

    /// RGBLight

    final GenericRgbwLightDE allRemoteCommandsRgbLight = GenericRgbwLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('7189ed76-4351-11ed-b249-63fd7e165c16'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('bf4bccdaf68347e31dhiut'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Dining Room Ceiling 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('tuya_smart'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        '7189ed77-4351-11ed-b249-63fd7e165c16',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      lightSwitchState:
          GenericRgbwLightSwitchState(DeviceActions.off.toString()),
      lightBrightness: GenericRgbwLightBrightness('1000'),
      lightColorAlpha: GenericRgbwLightColorAlpha('1.0'),
      lightColorHue: GenericRgbwLightColorHue('0.0'),
      lightColorSaturation: GenericRgbwLightColorSaturation('1.0'),
      lightColorTemperature: GenericRgbwLightColorTemperature('8129'),
      lightColorValue: GenericRgbwLightColorValue('1.0'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRgbLight =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsRgbLight),
    );
    devicesList.add(requestsAndStatusFromHubRgbLight);

    final GenericRgbwLightDE allRemoteCommandsRgbLight2 = GenericRgbwLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('7189ed76-4351-11ed-b249-63fd7e165c16'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('bf4bccdaf68347e31dhiut'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Dining Room Ceiling 2 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('tuya_smart'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        '7189ed77-4351-11ed-b249-63fd7e165c16',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      lightSwitchState:
          GenericRgbwLightSwitchState(DeviceActions.off.toString()),
      lightBrightness: GenericRgbwLightBrightness('1000'),
      lightColorAlpha: GenericRgbwLightColorAlpha('1.0'),
      lightColorHue: GenericRgbwLightColorHue('0.0'),
      lightColorSaturation: GenericRgbwLightColorSaturation('1.0'),
      lightColorTemperature: GenericRgbwLightColorTemperature('8129'),
      lightColorValue: GenericRgbwLightColorValue('1.0'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRgbLight2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsRgbLight2),
    );
    devicesList.add(requestsAndStatusFromHubRgbLight2);

    final GenericRgbwLightDE allRemoteCommandsRgbLight3 = GenericRgbwLightDE(
      uniqueId:
          CoreUniqueId.fromUniqueString('7189ed76-4351-11ed-b249-63fd7e165c16'),
      vendorUniqueId: VendorUniqueId.fromUniqueString('bf4bccdaf68347e31dhiut'),
      deviceVendor: DeviceVendor('tuyaSmart'),
      defaultName: DeviceDefaultName('Dining Room Ceiling 1234556789'),
      deviceStateGRPC: DeviceState(DeviceStateGRPC.ack.toString()),
      stateMassage: DeviceStateMassage('Hello World'),
      senderDeviceOs: DeviceSenderDeviceOs('tuya_smart'),
      senderDeviceModel: DeviceSenderDeviceModel('1SE'),
      senderId: DeviceSenderId.fromUniqueString(
        '7189ed77-4351-11ed-b249-63fd7e165c16',
      ),
      compUuid: DeviceCompUuid('34asdfrsd23gggg'),
      lightSwitchState:
          GenericRgbwLightSwitchState(DeviceActions.off.toString()),
      lightBrightness: GenericRgbwLightBrightness('1000'),
      lightColorAlpha: GenericRgbwLightColorAlpha('1.0'),
      lightColorHue: GenericRgbwLightColorHue('0.0'),
      lightColorSaturation: GenericRgbwLightColorSaturation('1.0'),
      lightColorTemperature: GenericRgbwLightColorTemperature('8129'),
      lightColorValue: GenericRgbwLightColorValue('1.0'),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubRgbLight3 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsRgbLight3),
    );
    devicesList.add(requestsAndStatusFromHubRgbLight3);

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
      deviceStateGRPC: SceneCbjDeviceStateGRPC('waitingInComp'),
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
  ) async {}
}
