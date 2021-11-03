import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/hub_in_network/hub_in_network_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/connect_to_hub/widgets/cbj_hub_in_network.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ConnectToHubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#303030'),
        brightness: Brightness.dark,
      ),
      backgroundColor: HexColor('#303030'),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Connect to Hub',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Container(
                      color: HexColor('#3A3A3A'),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  color: HexColor('#F8F9FA'),
                                  width: 40,
                                  height: 40,
                                  child: Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.networkWired,
                                      color: HexColor('#495057'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Flexible(
                                  child: Text(
                                    'Search a CyBear Jinni Hub in your network',
                                    style:
                                        TextStyle(color: HexColor('#D6D6D6')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: BlocProvider(
                                create: (context) => getIt<HubInNetworkBloc>()
                                  ..add(
                                    const HubInNetworkEvent
                                        .searchHubInNetwork(),
                                  ),
                                child: CbjHubInNetwork(),
                              ),
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
              Fluttertoast.showToast(
                msg: 'Connecting Hub to wireless network is not supported',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.SNACKBAR,
                backgroundColor: Colors.lightBlue,
                textColor: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 16.0,
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 60,
              color: HexColor('#3A3A3A'),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      color: HexColor('#F8F9FA'),
                      width: 40,
                      height: 40,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.wifi,
                          color: HexColor('#495057'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.9)),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Wireless Network\n',
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Connect a CyBear Jinni Hub to WiFi '
                                  'network',
                              style: TextStyle(color: HexColor('#D6D6D6')),
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
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () async {
                    context.router.push(const ConnectToHubMoreRoute());
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(70, 30),
                    backgroundColor: HexColor('#858585'),
                  ),
                  child: const Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
