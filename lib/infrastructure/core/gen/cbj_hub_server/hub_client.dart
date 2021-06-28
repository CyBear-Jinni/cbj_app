import 'dart:async';

import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class HubClient {
  static ClientChannel? channel;
  static CbjHubClient? stub;

  ///  Turn smart device on
  static Future<void> createStreamWithHub(String addressToHub) async {
    channel = await createCbjHubClient(addressToHub);
    stub = CbjHubClient(channel!);
    ResponseStream<RequestsAndStatusFromHub> response;
    Stream<ClientStatusRequests> streamClientStatusRequests =
        Stream.value(ClientStatusRequests());
    try {
      NumberCreator n = NumberCreator();

      response = stub!.registerClient(n.stream);

      response.listen((value) {
        print('Greeter client received: $value');
      });
      // await channel!.shutdown();
      // return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    // await channel!.shutdown();
    // throw 'Error';
  }

  static Future<ClientChannel> createCbjHubClient(String deviceIp) async {
    await channel?.shutdown();
    return ClientChannel(deviceIp,
        port: 50055,
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

class NumberCreator {
  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(ClientStatusRequests());
      _count++;
    });
  }

  var _count = 1;

  final _controller = StreamController<ClientStatusRequests>();

  Stream<ClientStatusRequests> get stream => _controller.stream;
}
