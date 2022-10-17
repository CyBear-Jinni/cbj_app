import 'dart:async';

import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
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

    const String allRemoteCommandsRoomDiscovered =
        '{"uniqueId":"00000000-0000-0000-0000-000000000000","defaultName":"Discovered","background":"https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80","roomTypes":[],"roomDevicesId":["65d84b10-434d-11ed-817a-7d350fb52f91"],"roomScenesId":[],"roomRoutinesId":[],"roomBindingsId":[],"roomMostUsedBy":[],"roomPermissions":[], }';
    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomDiscovered =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: allRemoteCommandsRoomDiscovered,
    );
    roomsList.add(requestsAndStatusFromHubRoomDiscovered);

    /// Guy Room

    const String allRemoteCommandsRoomGuy =
        '{"uniqueId":"23deb7f0-4193-11ed-9d1c-5747056d7848","defaultName":"Guy Room","background":"https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80","roomTypes":["0","1","2","4"],"roomDevicesId":["a31523m6-463s-32ge-7426-g33c642r7m25","c90137f2-419b-11ed-8246-e17a279f4d89", "96386cd0-419b-11ed-8246-e17a279f4d89"],"roomScenesId":["01bd6880-419b-11ed-af10-f75196d26a5e"],"roomRoutinesId":[],"roomBindingsId":[],"roomMostUsedBy":[],"roomPermissions":[]}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomGuy =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: allRemoteCommandsRoomGuy,
    );
    roomsList.add(requestsAndStatusFromHubRoomGuy);

    /// Out Side Room

    const String allRemoteCommandsRoomOutSide =
        '{"uniqueId":"38b45780-419c-11ed-bce9-8dc09da0062f","defaultName":"Outside","background":"https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80","roomTypes":["0","1","2","5"],"roomDevicesId":["7189ed76-4351-11ed-b249-63fd7e165c16"],"roomScenesId":[],"roomRoutinesId":[],"roomBindingsId":[],"roomMostUsedBy":[],"roomPermissions":[]}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubRoomOutSide =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeRoom,
      allRemoteCommands: allRemoteCommandsRoomOutSide,
    );
    roomsList.add(requestsAndStatusFromHubRoomOutSide);

    return roomsList;
  }

  static List<RequestsAndStatusFromHub> getAllDevices() {
    final List<RequestsAndStatusFromHub> devicesList = [];

    const SendingType sendingTypeDevice = SendingType.deviceType;

    /// Guy Blinds

    const String allRemoteCommandsBlinds =
        '{"id":"96386cd0-419b-11ed-8246-e17a279f4d89","vendorUniqueId":"63b298","defaultName":"Guy Blinds","deviceStateGRPC":"ack","senderDeviceOs":"switcher","senderDeviceModel":"SwitcherDevicesTypes.switcherRunner","senderId":"94edb282-434a-11ed-bd96-f573a00b65aa","blindsSwitchState":"stop","deviceTypes":"blinds","compUuid":"34asdfrsd23gggg","deviceVendor":"switcherSmartHome","deviceDtoClass":"GenericBlindsDeviceDtos","stateMassage":"Hello World"}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubBlinds =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsBlinds,
    );

    devicesList.add(requestsAndStatusFromHubBlinds);

    /// Guy Ceiling Button

    const String allRemoteCommandsButton =
        '{"id":"c90137f2-419b-11ed-8246-e17a279f4d89","vendorUniqueId":"67600068c44f33f5b515","defaultName":"Guy Ceiling Button","deviceStateGRPC":"ack","senderDeviceOs":"tuya_smart","senderDeviceModel":"Cloud","senderId":"90d20fc3-434a-11ed-bd96-f573a00b65aa","switchState":"false","deviceTypes":"switch","compUuid":"34asdfrsd23gggg","deviceVendor":"tuyaSmart","deviceDtoClass":"GenericSwitchDeviceDtos","stateMassage":"Hello World"}';

    final RequestsAndStatusFromHub requestsAndStatusFromHubButton =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsButton,
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

    const String allRemoteCommandsSceneOpen =
        '''{"uniqueId":"01bd6880-419b-11ed-af10-f75196d26a5e","name":"Study Scene","backgroundColor":"0xFFFF9800","deviceStateGRPC":"waitingInComp","senderDeviceOs":null,"senderDeviceModel":null,"senderId":null,"compUuid":null,"stateMassage":null,"automationString":"[]","nodeRedFlowId":"6b63068c3c970eeb","firstNodeId":"3f1a9440-41a1-11ed-8b6a-5f136f4fe196","iconCodePoint":null,"image":null,"lastDateOfExecute":null}''';
    final RequestsAndStatusFromHub requestsAndStatusFromHubSceneOpen =
        RequestsAndStatusFromHub(
      sendingType: sendingTypeDevice,
      allRemoteCommands: allRemoteCommandsSceneOpen,
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
