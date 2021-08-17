part of 'hub_in_network_bloc.dart';

@freezed
class HubInNetworkEvent with _$HubInNetworkEvent {
  const factory HubInNetworkEvent.searchHubInNetwork() = _WatchAllStarted;
}
