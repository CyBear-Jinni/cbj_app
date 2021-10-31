part of 'configure_new_cbj_comp_bloc.dart';

@freezed
class ConfigureNewCbjCompEvent with _$ConfigureNewCbjCompEvent {
  const factory ConfigureNewCbjCompEvent.initialized() = Initialized;

  const factory ConfigureNewCbjCompEvent.deleted(GenericLightDE deviceEntity) =
      _Deleted;

  const factory ConfigureNewCbjCompEvent.setupNewDevice(
    CBJCompEntity cBJCompEntity,
    Map<String, TextEditingController> textEditingController,
  ) = _SetupNewDevice;
  const factory ConfigureNewCbjCompEvent.saveDevicesToCloud(
    CBJCompEntity cBJCompEntity,
  ) = _SaveDevicesToCloud;

  const factory ConfigureNewCbjCompEvent.saveDevicesToComputer(
    CBJCompEntity cBJCompEntity,
  ) = _SaveDevicesToComputer;

  const factory ConfigureNewCbjCompEvent.sendFirebaseInformation(
    CBJCompEntity cBJCompEntity,
  ) = _SendFirebaseInformation;

  const factory ConfigureNewCbjCompEvent.sendHotSpotInformation(
    CBJCompEntity cBJCompEntity,
  ) = _SendHotSpotInformation;

  const factory ConfigureNewCbjCompEvent.checkOperationsCompletedSuccessfully(
    CBJCompEntity cBJCompEntity,
  ) = _CheckOperationsCompletedSuccessfully;
}
