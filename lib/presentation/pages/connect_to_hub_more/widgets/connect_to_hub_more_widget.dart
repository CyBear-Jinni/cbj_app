import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kt_dart/kt.dart';

class ConnectToHubMoreWidget extends StatefulWidget {
  @override
  State<ConnectToHubMoreWidget> createState() => _ConnectToHubMoreWidgetState();
}

class _ConnectToHubMoreWidgetState extends State<ConnectToHubMoreWidget> {
  StreamSubscription<
          dartz.Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  bool isLoading = false;

  Future<void> _connectInDemoMode() async {
    context.router.replace(const HomeRoute());
    IHubConnectionRepository.instance.connectWithHub(demoMod: true);
  }

  @override
  void dispose() {
    _deviceStreamSubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const CircularProgressIndicatorAtom();
    }

    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: ColoredBox(
                    color: HexColor('#985dc7'),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: const Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.globe,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Flexible(
                                child: TextAtom(
                                  'Connect to Remote Pipes',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: TextAtom(
                              'Currently not supported',
                              style: TextStyle(color: Colors.white),
                            ),
                            // BlocProvider(
                            //   create: (context) => getIt<HubInNetworkBloc>()
                            //     ..add(
                            //       const HubInNetworkEvent
                            //           .searchHubInNetwork(),
                            //     ),
                            //   child: CbjHubInNetwork(),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height / 20,
        ),
        GestureDetector(
          onTap: () {
            _connectInDemoMode();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 60,
            color: HexColor('#985dc7'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.vial,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Open Demo\n',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Demo mod will not let you add or control '
                                'real smart home device!',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
