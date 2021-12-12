part of 'create_home_bloc.dart';

@freezed
class CreateHomeEvent with _$CreateHomeEvent {
  const factory CreateHomeEvent.initialized() = Initialized;

  const factory CreateHomeEvent.createHome(
    String homeName,
    String devicesEmail,
  ) = CreateHome;
}
