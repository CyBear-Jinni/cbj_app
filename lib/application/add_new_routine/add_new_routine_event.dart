part of 'add_new_routine_bloc.dart';

@freezed
class AddNewRoutineEvent with _$AddNewRoutineEvent {
  const factory AddNewRoutineEvent.initialized() = Initialized;

  const factory AddNewRoutineEvent.routineNameChange(String routineName) =
      RoutineNameChange;

  const factory AddNewRoutineEvent.changeActionDevices(String deviceId) =
      ChangeActionDevices;

  const factory AddNewRoutineEvent.addDevicesWithNewActions(
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) = AddDevicesWithNewActions;

  const factory AddNewRoutineEvent.deleted(GenericLightDE deviceEntity) =
      Deleted;

  const factory AddNewRoutineEvent.sendRoutineToHub() = SendRoutineToHub;
}
