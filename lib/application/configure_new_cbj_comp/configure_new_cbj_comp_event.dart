part of 'configure_new_cbj_comp_bloc.dart';

@freezed
class ConfigureNewCbjCompEvent with _$ConfigureNewCbjCompEvent {
  const factory ConfigureNewCbjCompEvent.initialized() = Initialized;

  const factory ConfigureNewCbjCompEvent.deleted(GenericLightDE deviceEntity) =
      Deleted;

  const factory ConfigureNewCbjCompEvent.setupNewDevice(
    CBJCompEntity cBJCompEntity,
    Map<String, TextEditingController> textEditingController,
  ) = SetupNewDevice;
  const factory ConfigureNewCbjCompEvent.saveDevicesToCloud(
    CBJCompEntity cBJCompEntity,
  ) = SaveDevicesToCloud;

  const factory ConfigureNewCbjCompEvent.saveDevicesToComputer(
    CBJCompEntity cBJCompEntity,
  ) = SaveDevicesToComputer;

  const factory ConfigureNewCbjCompEvent.sendFirebaseInformation(
    CBJCompEntity cBJCompEntity,
  ) = SendFirebaseInformation;

  const factory ConfigureNewCbjCompEvent.sendHotSpotInformation(
    CBJCompEntity cBJCompEntity,
  ) = SendHotSpotInformation;

  const factory ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
    CBJCompEntity cBJCompEntity,
  ) = CheckOperationsCompletedSuccessfully;

  const factory ConfigureNewCbjCompEvent.checkConnectedToWiFiNetwork() =
      CheckConnectedToWiFiNetwork;

  const factory ConfigureNewCbjCompEvent.searchIfHubOnTheSameWifiNetwork() =
      SearchIfHubOnTheSameWifiNetwork;
}
