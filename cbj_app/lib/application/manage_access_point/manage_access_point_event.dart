part of 'manage_access_point_bloc.dart';

@freezed
class ManageAccessPointEvent with _$ManageAccessPointEvent {
  factory ManageAccessPointEvent.doesAccessPointOpen() = DoesAccessPointOpen;

  factory ManageAccessPointEvent.initialized() = Initialized;
}
