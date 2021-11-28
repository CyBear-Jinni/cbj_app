part of 'manage_access_point_bloc.dart';

@freezed
class ManageAccessPointEvent with _$ManageAccessPointEvent {
  factory ManageAccessPointEvent.initialized() = Initialized;

  factory ManageAccessPointEvent.doesAccessPointOpen() = DoesAccessPointOpen;
}
