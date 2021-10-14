part of 'lifx_auth_bloc.dart';

@freezed
class LifxAuthState with _$LifxAuthState {
  const factory LifxAuthState.initial() = Initial;

  const factory LifxAuthState.authenticated() = Authenticated;

  const factory LifxAuthState.unauthenticated() = Unauthenticated;
}
