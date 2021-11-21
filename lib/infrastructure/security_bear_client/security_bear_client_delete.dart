// import 'dart:async';
//
// import 'package:cybear_jinni/infrastructure/core/gen/cbj_securityBear_server/protoc_as_dart/cbj_securityBear_server.pbgrpc.dart';
// import 'package:cybear_jinni/infrastructure/securityBear_client/security_bear_requests_routing.dart';
// import 'package:cybear_jinni/utils.dart';
// import 'package:grpc/grpc.dart';
//
// class SecurityBearClient {
//   static ClientChannel? channel;
//   static CbjSecurityBearClient? stub;
//
//   ///  Creates a stream with the SecurityBear
//   static Future createStreamWithSecurityBear(
//     String addressToSecurityBear,
//     int securityBearPort,
//   ) async {
//     channel = await _createCbjSecurityBearClient(addressToSecurityBear, securityBearPort);
//     stub = CbjSecurityBearClient(channel!);
//     ResponseStream<RequestsAndStatusFromSecurityBear> response;
//
//     try {
//       SecurityBearRequestRouting.navigateRequest();
//
//       response =
//           stub!.clientTransferDevices(AppRequestsToSecurityBear.appRequestsToSecurityBearStream);
//       AppRequestsToSecurityBear.appRequestsToSecurityBearStreamController.sink
//           .add(ClientStatusRequests(sendingType: SendingType.firstConnection));
//
//       SecurityBearRequestsToApp.securityBearRequestsStreamController.sink.addStream(response);
//     } catch (e) {
//       logger.e('Caught error while stream with securityBear\n$e');
//       await channel?.shutdown();
//     }
//   }
//
//   ///  Get SecurityBear computer and software info
//   static Future<CompSecurityBearInfo?> getSecurityBearCompInfo(
//     String addressToSecurityBear,
//     int securityBearPort,
//     CompSecurityBearInfo compSecurityBearInfo,
//   ) async {
//     // channel = await _createCbjSecurityBearClient(addressToSecurityBear, securityBearPort);
//     // stub = CbjSecurityBearClient(channel!);
//     CompSecurityBearInfo response;
//
//     try {
//       return await stub!.getCompSecurityBearInfo(compSecurityBearInfo);
//     } catch (e) {
//       logger.e('Caught error while trying to get SecurityBear comp info\n$e');
//       await channel?.shutdown();
//     }
//     return null;
//   }
//
//   static Future<ClientChannel> _createCbjSecurityBearClient(
//     String deviceIp,
//     int securityBearPort,
//   ) async {
//     await channel?.shutdown();
//     return ClientChannel(
//       deviceIp,
//       port: securityBearPort,
//       options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
//     );
//   }
// }
//
// /// Requests and updates from securityBear to the app
// class SecurityBearRequestsToApp {
//   /// Stream controller of the requests from the securityBear
//   static final securityBearRequestsStreamController =
//       StreamController<RequestsAndStatusFromSecurityBear>();
//
//   /// Stream of the requests from the securityBear
//   static Stream<RequestsAndStatusFromSecurityBear> get securityBearRequestsStream =>
//       securityBearRequestsStreamController.stream;
// }
//
// ///App requests for the securityBear to execute
// class AppRequestsToSecurityBear {
//   /// Stream controller of the app request for the securityBear
//   static final appRequestsToSecurityBearStreamController =
//       StreamController<ClientStatusRequests>();
//
//   /// Stream of the requests from the app to the securityBear
//   static Stream<ClientStatusRequests> get appRequestsToSecurityBearStream =>
//       appRequestsToSecurityBearStreamController.stream;
// }
