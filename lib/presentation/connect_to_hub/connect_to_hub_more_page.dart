import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ConnectToHubMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#303030'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
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
                      'More Connections Options',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 23),
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
                                      FontAwesomeIcons.globe,
                                      color: HexColor('#495057'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Flexible(
                                  child: Text(
                                    'Connect to Remote Pipes',
                                    style:
                                        TextStyle(color: HexColor('#D6D6D6')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Center(
                              child: Text('Currently not supported'),
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
              context.router.replace(const HomeRoute());
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
                          FontAwesomeIcons.vial,
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
                              text: 'Open Demo\n',
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Demo mod will not let you add or control '
                                  'real smart home device!',
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
                    context.router.pop();
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(70, 30),
                    backgroundColor: HexColor('#858585'),
                  ),
                  child: const Text(
                    'Back',
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
