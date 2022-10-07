part of 'hub_in_network_bloc.dart';

@freezed
class HubInNetworkState with _$HubInNetworkState {
  factory HubInNetworkState.initial() = _Initial;

  const factory HubInNetworkState.loadInProgress() = _LoadInProgress;

  const factory HubInNetworkState.loadSuccess() = _loadSuccess;

  const factory HubInNetworkState.tryIpManually(
    String ipOnTheNetwork,
    bool isHubIp,
  ) = TryIpManually;

  const factory HubInNetworkState.loadFailure(HubFailures hubFailure) =
      _loadFailure;

  const factory HubInNetworkState.lightError() = LightError;
}
