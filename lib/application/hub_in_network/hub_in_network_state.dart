part of 'hub_in_network_bloc.dart';

@freezed
class HubInNetworkState with _$HubInNetworkState {
  factory HubInNetworkState.initial() = _Initial;

  const factory HubInNetworkState.loadInProgress() = _LoadInProgress;

  const factory HubInNetworkState.loadSuccess(KtList<GenericLightDE?> devices) =
      _loadSuccess;

  const factory HubInNetworkState.loadFailure(DevicesFailure devicesFailure) =
      _loadFailure;

  const factory HubInNetworkState.lightError() = LightError;
}
