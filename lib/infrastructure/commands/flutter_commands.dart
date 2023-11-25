import 'dart:io';

import 'package:cbj_integrations_controller/infrastructure/system_commands/phone_commands_d/common_batch_commands_d.dart';
import 'package:path_provider/path_provider.dart';

class PhoneCommandsD implements IPhoneCommandsD {
  PhoneCommandsD() {
    IPhoneCommandsD.instance = this;
  }

  String? currentUserName;
  String? currentDriveLetter;

  @override
  Future<String> getCurrentUserName() async {
    return 'cbj_app';
  }

  @override
  Future<String> getUuidOfCurrentDevice() async {
    return '000000000';
  }

  @override
  Future<String> getDeviceHostName() async {
    return '';
  }

  @override
  Future<String> getAllEtcReleaseFilesText() {
    //TODO: add implementation, for now will return getDeviceHostName
    return getDeviceHostName();
  }

  @override
  Future<String> getFileContent(String fileFullPath) async {
    throw UnimplementedError();
  }

  @override
  Future<String> getDeviceConfiguration() async {
    return '';
  }

  Future<String> getCurrentDriveLetter() async {
    return '';
  }

  //TODO: Currently does not work as echo %~dp0 will not work at the command
  // line, only in a batch file.
  Future<String> getOsDriveLetter() async {
    return '';
  }

  @override
  Future<String> getLocalDbPath(
    Future<String?> currentUserName,
  ) async {
    return (await getApplicationDocumentsDirectory()).path;
  }

  @override
  Future<String> getProjectFilesLocation() async {
    return Directory.current.path;
  }

  @override
  Future<String?> suspendComputer() {
    // TODO: implement goToSleep
    throw UnimplementedError();
  }

  @override
  Future<String?> shutdownComputer() {
    // TODO: implement shutdownComputer
    throw UnimplementedError();
  }
}
