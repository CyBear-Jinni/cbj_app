part of 'create_home_bloc.dart';

@freezed
abstract class CreateHomeEvent with _$CreateHomeEvent {
  const factory CreateHomeEvent.initialized() = Initialized;
}
