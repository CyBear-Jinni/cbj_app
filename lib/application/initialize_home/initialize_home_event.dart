part of 'initialize_home_bloc.dart';

@freezed
abstract class InitializeHomeEvent with _$InitializeHomeEvent {
  const factory InitializeHomeEvent.initialized() = Initialized;
}
