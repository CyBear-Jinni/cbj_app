import 'dart:async';

import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_connection/hub_requests_routing.dart';
import 'package:grpc/grpc.dart';

class HubClient {
  static ClientChannel? channel;
  static CbjHubClient? stub;

  ///  Turn smart device on
  static Future<void> createStreamWithHub(
      String addressToHub, int hubPort) async {
    channel = await createCbjHubClient(addressToHub, hubPort);
    stub = CbjHubClient(channel!);
    ResponseStream<RequestsAndStatusFromHub> response;

    try {
      HubRequestRouting.navigateRequest();

      response =
          stub!.clientTransferDevices(AppRequestsToHub.appRequestsToHubStream);

      HubRequestsToApp.hubRequestsStreamController.sink.addStream(response);
    } catch (e) {
      print('Caught error: $e');
      await channel?.shutdown();
    }
  }

  static Future<ClientChannel> createCbjHubClient(
      String deviceIp, int hubPort) async {
    await channel?.shutdown();
    return ClientChannel(deviceIp,
        port: hubPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}

/// Cleaner way to get grpc client types
class GrpcClientTypes {
  /// DeviceStateGRPC type
  static final deviceStateGRPCType =
      DeviceStateGRPC.stateNotSupported.runtimeType;

  /// DeviceStateGRPC type as string
  static final deviceStateGRPCTypeString =
      deviceStateGRPCType.toString().substring(0, 1).toLowerCase() +
          deviceStateGRPCType.toString().substring(1);

  /// DeviceActions type as string
  static final deviceActionsType = DeviceActions.actionNotSupported.runtimeType;

  /// DeviceActions type as string
  static final deviceActionsTypeString =
      deviceActionsType.toString().substring(0, 1).toLowerCase() +
          deviceActionsType.toString().substring(1);

  /// DeviceActions type as string
  static final deviceTypesType = DeviceTypes.typeNotSupported.runtimeType;

  /// DeviceActions type as string
  static final deviceTypesTypeString =
      deviceTypesType.toString().substring(0, 1).toLowerCase() +
          deviceTypesType.toString().substring(1);
}

/// Requests and updates from hub to the app
class HubRequestsToApp {
  /// Stream controller of the requests from the hub
  static final hubRequestsStreamController =
      StreamController<RequestsAndStatusFromHub>();

  /// Stream of the requests from the hub
  static Stream<RequestsAndStatusFromHub> get hubRequestsStream =>
      hubRequestsStreamController.stream;
}

///App requests for the hub to execute
class AppRequestsToHub {
  /// Stream controller of the app request for the hub
  static final appRequestsToHubStreamController =
      StreamController<ClientStatusRequests>();

  /// Stream of the requests from the app to the hub
  static Stream<ClientStatusRequests> get appRequestsToHubStream =>
      appRequestsToHubStreamController.stream;
}
