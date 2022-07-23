part of 'add_new_binding_bloc.dart';

@freezed
class AddNewBindingEvent with _$AddNewBindingEvent {
  const factory AddNewBindingEvent.initialized() = Initialized;

  const factory AddNewBindingEvent.bindingNameChange(String bindingName) =
      BindingNameChange;

  const factory AddNewBindingEvent.changeActionDevices(String deviceId) =
      ChangeActionDevices;

  const factory AddNewBindingEvent.addDevicesWithNewActions(
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) = AddDevicesWithNewActions;

  const factory AddNewBindingEvent.deleted(GenericLightDE deviceEntity) =
      Deleted;

  const factory AddNewBindingEvent.sendBindingToHub() = SendBindingToHub;
}
