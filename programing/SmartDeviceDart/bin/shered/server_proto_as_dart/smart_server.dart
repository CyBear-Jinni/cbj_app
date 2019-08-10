import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';

import '../../smart_device/smart_device_objects/abstract_smart_devices/smart_device_base_abstract.dart';
import '../enums.dart';
import 'smart_connection.pb.dart';
import 'smart_connection.pbgrpc.dart';

class SmartServer extends SmartServerServiceBase{
  List<SmartDeviceBaseAbstract> smartDevicesList;
  SmartServer(this.smartDevicesList);

  // Listening in the background to incoming connections
  Future startListen() async {
    final server = Server([SmartServer(smartDevicesList)]);
    await server.serve(port: 50051);
    print('Server listening on port ${server.port}...');
  }

  // Return the status of the specified device
  @override
  Future<SmartDeviceStatus> getStatus(ServiceCall call, SmartDevice request) async {
    String deviceStatus = smartDevicesList[int.parse(request.name)].WishInBaseClass(WishEnum.GState);
    print('Getting status of device ' + request.toString() + ' and device status in bool ' + deviceStatus);
    return SmartDeviceStatus()..onOffState = deviceStatus == 'true' ? true: false;
  }

  @override
  Future<CommendStatus> setOffDevice(ServiceCall call, SmartDevice request) async {
    print('Turn device' + request.name + ' off');
    SmartDeviceBaseAbstract smartDevice = smartDevicesList[int.parse(request.name)];
    smartDevice.WishInBaseClass(WishEnum.SOff);
    print('Device state is ' + smartDevice.onOff.toString());
    return CommendStatus()..success = smartDevice.onOff;
  }

  @override
  Future<CommendStatus> setOnDevice(ServiceCall call, SmartDevice request) async {
    print('Turn device' + request.name + ' on');
    SmartDeviceBaseAbstract smartDevice = smartDevicesList[int.parse(request.name)];
    smartDevice.WishInBaseClass(WishEnum.SOn);
    print('Device state is ' + smartDevice.onOff.toString());

    return CommendStatus()..success = smartDevice.onOff;
  }
}


// Get Ip info
Future<String> getIps() async {
  for (NetworkInterface interface in await NetworkInterface.list()) {
//      print('== Interface: ${interface.name} ==');
    for (InternetAddress addr in interface.addresses) {
//        print(
//            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
      return addr.address;
    }
  }
  return null;
}
