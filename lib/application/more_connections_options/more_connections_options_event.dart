part of 'more_connections_options_bloc.dart';

@freezed
class MoreConnectionsOptionsEvent with _$MoreConnectionsOptionsEvent {
  const factory MoreConnectionsOptionsEvent.initialEvent(BuildContext context) =
      InitialEvent;

  const factory MoreConnectionsOptionsEvent.connectToRemotePipes() =
      ConnectToRemotePipes;

  const factory MoreConnectionsOptionsEvent.connectInDemoMode() =
      ConnectInDemoMode;
}
