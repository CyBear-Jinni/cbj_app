import 'dart:async';
import 'dart:convert';

import 'package:cybear_jinni/application/remote_pipes/remote_pipes_bloc.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_value_objects.dart';
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
          RoomUniqueId.fromUniqueString("00000000-0000-0000-0000-000000000000"),
      defaultName: RoomDefaultName("Discovered"),
      roomTypes: RoomTypes(const []),
      roomDevicesId:
          RoomDevicesId(const ["65d84b10-434d-11ed-817a-7d350fb52f91"]),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
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
          RoomUniqueId.fromUniqueString("23deb7f0-4193-11ed-9d1c-5747056d7848"),
      defaultName: RoomDefaultName("Guy Room"),
      roomTypes: RoomTypes(const ["0", "1", "2", "4"]),
      roomDevicesId: RoomDevicesId(const [
        "a31523m6-463s-32ge-7426-g33c642r7m25",
        "c90137f2-419b-11ed-8246-e17a279f4d89",
        "96386cd0-419b-11ed-8246-e17a279f4d89",
      ]),
      roomScenesId:
          RoomScenesId(const ["01bd6880-419b-11ed-af10-f75196d26a5e"]),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
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
          RoomUniqueId.fromUniqueString("38b45780-419c-11ed-bce9-8dc09da0062f"),
      defaultName: RoomDefaultName("Outside"),
      roomTypes: RoomTypes(const ["0", "1", "2", "5"]),
      roomDevicesId: RoomDevicesId(const [
        "a31523m6-463s-32ge-7426-g33c642r7m25",
        "c90137f2-419b-11ed-8246-e17a279f4d89",
        "96386cd0-419b-11ed-8246-e17a279f4d89",
      ]),
      roomScenesId:
          RoomScenesId(const ["7189ed76-4351-11ed-b249-63fd7e165c16"]),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
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
          CoreUniqueId.fromUniqueString("96386cd0-419b-11ed-8246-e17a279f4d89"),
      vendorUniqueId: VendorUniqueId.fromUniqueString("63b298"),
      deviceVendor: DeviceVendor(null),
      defaultName: DeviceDefaultName("Guy Blinds"),
      deviceStateGRPC: DeviceState(null),
      stateMassage: DeviceStateMassage(null),
      senderDeviceOs: DeviceSenderDeviceOs("switcher"),
      senderDeviceModel:
          DeviceSenderDeviceModel("SwitcherDevicesTypes.switcherRunner"),
      senderId: DeviceSenderId.fromUniqueString(
          "94edb282-434a-11ed-bd96-f573a00b65aa"),
      compUuid: DeviceCompUuid("34asdfrsd23gggg"),
      blindsSwitchState: GenericBlindsSwitchState("GenericBlindsDeviceDtos"),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubBlinds =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsBlinds),
    );

    devicesList.add(requestsAndStatusFromHubBlinds);

    /// Guy Ceiling Button

    final GenericBlindsDE allRemoteCommandsButton = GenericBlindsDE(
      uniqueId:
          CoreUniqueId.fromUniqueString("c90137f2-419b-11ed-8246-e17a279f4d89"),
      vendorUniqueId: VendorUniqueId.fromUniqueString("67600068c44f33f5b515"),
      deviceVendor: DeviceVendor("tuyaSmart"),
      defaultName: DeviceDefaultName("Guy Ceiling Button"),
      deviceStateGRPC: DeviceState("ack"),
      stateMassage: DeviceStateMassage("Hello World"),
      senderDeviceOs: DeviceSenderDeviceOs("switcher"),
      senderDeviceModel: DeviceSenderDeviceModel("Cloud"),
      senderId: DeviceSenderId.fromUniqueString(
          "90d20fc3-434a-11ed-bd96-f573a00b65aa"),
      compUuid: DeviceCompUuid("34asdfrsd23gggg"),
      blindsSwitchState: GenericBlindsSwitchState("false"),
    );

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands:
          DeviceHelper.convertDomainToJsonString(allRemoteCommandsButton),
    );
    devicesList.add(requestsAndStatusFromHubButton);

    /// Guy Button 2

    const String allRemoteCommandsButton2 =
        '{"id":"a31523m6-463s-32ge-7426-g33c642r7m25","vendorUniqueId":"67600068c44f33f5b515","defaultName":"Guy Bedroom Button","deviceStateGRPC":"ack","senderDeviceOs":"tuya_smart","senderDeviceModel":"Cloud","senderId":"90d20fc3-434a-11ed-bd96-f573a00b65aa","switchState":"false","deviceTypes":"switch","compUuid":"34asdfrsd23gggg","deviceVendor":"tuyaSmart","deviceDtoClass":"GenericSwitchDeviceDtos","stateMassage":"Hello World"}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton2 =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsButton2,
    );
    devicesList.add(requestsAndStatusFromHubButton2);

    /// Boiler

    const String allRemoteCommandsBoiler =
        '{"id":"65d84b10-434d-11ed-817a-7d350fb52f91","vendorUniqueId":"65fd2f","defaultName":"Boiler","deviceStateGRPC":"ack","senderDeviceOs":"switcher","senderDeviceModel":"SwitcherDevicesTypes.switcherV2Esp","senderId":"65d84b11-434d-11ed-817a-7d350fb52f91","boilerSwitchState":"off","deviceTypes":"boiler","compUuid":"34asdfrsd23gggg","deviceVendor":"switcherSmartHome","deviceDtoClass":"GenericBoilerDeviceDtos","stateMassage":"Hello World"}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubBoiler =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsBoiler,
    );
    devicesList.add(requestsAndStatusFromHubBoiler);

    /// RGBLight

    const String allRemoteCommandsRgbLight =
        '{"id":"7189ed76-4351-11ed-b249-63fd7e165c16","vendorUniqueId":"bf4bccdaf68347e31dhiut","defaultName":"Dining Room Ceiling","deviceStateGRPC":"ack","senderDeviceOs":"tuya_smart","senderDeviceModel":"1SE","senderId":"7189ed77-4351-11ed-b249-63fd7e165c16","deviceTypes":"rgbwLights","compUuid":"34asdfrsd23gggg","deviceVendor":"tuyaSmart","lightSwitchState":"on","lightColorTemperature":"8129","lightBrightness":"1000","lightColorAlpha":"1.0","lightColorHue":"0.0","lightColorSaturation":"1.0","lightColorValue":"1.0","deviceDtoClass":"GenericRgbwLightDeviceDtos","stateMassage":"Hello World"}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubRgbLight =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsRgbLight,
    );
    devicesList.add(requestsAndStatusFromHubRgbLight);

    return devicesList;
  }

  static List<RequestsAndStatusFromHub> getAllScenes() {
    final List<RequestsAndStatusFromHub> scenesList = [];

    const SendingType sendingTypeDevice = SendingType.sceneType;

    /// Study Scene

    final SceneCbjEntity allRemoteCommandsSceneOpen = SceneCbjEntity(
      uniqueId:
          UniqueId.fromUniqueString("01bd6880-419b-11ed-af10-f75196d26a5e"),
      name: SceneCbjName("Study Scene"),
      backgroundColor: SceneCbjBackgroundColor("0xFFFF9800"),
      nodeRedFlowId: SceneCbjNodeRedFlowId("waitingInComp"),
      automationString: SceneCbjAutomationString(""),
      firstNodeId: SceneCbjFirstNodeId("6b63068c3c970eeb"),
      iconCodePoint: SceneCbjIconCodePoint(null),
      image: SceneCbjBackgroundImage(null),
      lastDateOfExecute: SceneCbjLastDateOfExecute(null),
      stateMassage: SceneCbjStateMassage(null),
      senderDeviceOs: SceneCbjSenderDeviceOs(null),
      senderDeviceModel: SceneCbjSenderDeviceModel(null),
      senderId: SceneCbjSenderId(null),
      compUuid: SceneCbjCompUuid(null),
      deviceStateGRPC: SceneCbjDeviceStateGRPC(null),
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
