part of 'configure_new_cbj_comp_bloc.dart';

@freezed
abstract class ConfigureNewCbjCompEvent with _$ConfigureNewCbjCompEvent {
  const factory ConfigureNewCbjCompEvent.initialized() = Initialized;
  const factory ConfigureNewCbjCompEvent.deleted(DeviceEntity deviceEntity) =
      _Deleted;
  const factory ConfigureNewCbjCompEvent.setupNewDevice(
          CBJCompEntity cBJCompEntity,
          Map<String, TextEditingController> textEditingController) =
      _SetupNewDevice;
  const factory ConfigureNewCbjCompEvent.saveDevicesToCloud(
      CBJCompEntity cBJCompEntity) = _SaveDevicesToCloud;

  const factory ConfigureNewCbjCompEvent.saveDevicesToComputer(
      CBJCompEntity cBJCompEntity) = _SaveDevicesToComputer;

  const factory ConfigureNewCbjCompEvent.sendFirebaseInformation(
      CBJCompEntity cBJCompEntity) = _SendFirebaseInformation;

  const factory ConfigureNewCbjCompEvent.sendHotSpotInformation(
      CBJCompEntity cBJCompEntity) = _SendHotSpotInformation;

  const factory ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
      CBJCompEntity cBJCompEntity) = _CheckOperationsCompletedSuccessfully;
}

//TODO: Send firebase data and new hotspot to the security bear

//TODO: Make sure the data was updated and device can updated firebase

//TODO: go back to add new devices screen
