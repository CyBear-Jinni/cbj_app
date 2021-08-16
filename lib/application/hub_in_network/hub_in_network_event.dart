part of 'hub_in_network_bloc.dart';

@freezed
class HubInNetworkEvent with _$HubInNetworkEvent {
  const factory HubInNetworkEvent.watchAllStarted() = _WatchAllStarted;

  const factory HubInNetworkEvent.devicesReceived(
      Either<DevicesFailure, KtList<DeviceEntityAbstract?>>
          failureOrDevices) = _DevicesReceived;
}
