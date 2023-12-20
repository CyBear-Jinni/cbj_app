import 'dart:io';

import 'package:cbj_integrations_controller/infrastructure/system_commands/phone_commands_d/common_batch_commands_d.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';

class AppCommands implements IPhoneCommandsD {
  AppCommands() {
    IPhoneCommandsD.instance = this;
  }

  @override
  Future<String> getAllEtcReleaseFilesText() {
    // TODO: implement getAllEtcReleaseFilesText
    throw UnimplementedError();
  }

  @override
  Future<String> getCurrentUserName() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      return (await deviceInfo.androidInfo).product;
    } else if (Platform.isIOS) {
      return (await deviceInfo.iosInfo).name;
    } else if (Platform.isLinux) {
      return (await deviceInfo.linuxInfo).name;
    } else if (Platform.isMacOS) {
      return (await deviceInfo.macOsInfo).computerName;
    } else if (Platform.isWindows) {
      return (await deviceInfo.windowsInfo).computerName;
    }
    return 'cbj_app';
  }

  @override
  Future<String?> getDeviceConfiguration() {
    // TODO: implement getDeviceConfiguration
    throw UnimplementedError();
  }

  @override
  Future<String> getDeviceHostName() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      return (await deviceInfo.androidInfo).product;
    } else if (Platform.isIOS) {
      return (await deviceInfo.iosInfo).name;
    } else if (Platform.isLinux) {
      return (await deviceInfo.linuxInfo).name;
    } else if (Platform.isMacOS) {
      return (await deviceInfo.macOsInfo).computerName;
    } else if (Platform.isWindows) {
      return (await deviceInfo.windowsInfo).computerName;
    }
    return 'cbj_app';
  }

  @override
  Future<String?> getFileContent(String fileFullPath) {
    // TODO: implement getFileContent
    throw UnimplementedError();
  }

  @override
  Future<String> getLocalDbPath(Future<String?> currentUserName) async {
    final Directory appDocDirectory = await getApplicationDocumentsDirectory();
    return appDocDirectory.path;
  }

  @override
  Future<String> getProjectFilesLocation() {
    // TODO: implement IPhonasdeCommandsD
    throw UnimplementedError();
  }

  @override
  Future<String> getUuidOfCurrentDevice() {
    // TODO: implement getUuidOfCurrentDevice
    throw UnimplementedError();
  }

  @override
  Future<String?> shutdownComputer() {
    // TODO: implement shutdownComputer
    throw UnimplementedError();
  }

  @override
  Future<String?> suspendComputer() {
    // TODO: implement suspendComputer
    throw UnimplementedError();
  }
}
