part of 'lifx_auth_bloc.dart';

@freezed
class LifxAuthEvent with _$LifxAuthEvent {
  const factory LifxAuthEvent.authCheckRequested() = AuthCheckRequested;

  const factory LifxAuthEvent.signedOut() = SignedOut;
}
