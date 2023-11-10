part of 'hub_in_network_bloc.dart';

@freezed
class HubInNetworkEvent with _$HubInNetworkEvent {
  const factory HubInNetworkEvent.initialEvent(BuildContext context) =
      InitialEvent;

  const factory HubInNetworkEvent.searchHubInNetwork() = SearchHubInNetwork;

  const factory HubInNetworkEvent.openSmartCameraPage(BuildContext context) =
      OpenSmartCameraPage;

  const factory HubInNetworkEvent.searchHubUsingAnyIpOnTheNetwork(
    String ipOnTheNetwork,
    bool isHubIp,
  ) = SearchHubUsingAnyIpOnTheNetwork;

  const factory HubInNetworkEvent.isHubIpCheckBoxChangedState(
    String ipOnTheNetwork,
    bool isHubIp,
  ) = IsHubIpCheckBoxChangedState;
}
