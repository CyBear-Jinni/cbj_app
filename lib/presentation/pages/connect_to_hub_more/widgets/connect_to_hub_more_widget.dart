import 'package:cybear_jinni/application/more_connections_options/more_connections_options_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ConnectToHubMoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocBuilder<MoreConnectionsOptionsBloc, MoreConnectionsOptionsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
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
                                        child: Text(
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
                                    child: Text(
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
                    context.read<MoreConnectionsOptionsBloc>().add(
                          const MoreConnectionsOptionsEvent.connectInDemoMode(),
                        );
                    // context.router.replace(const HomeRoute());
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
                                    text:
                                        'Demo mod will not let you add or control '
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
          },
          loadInProgress: (_) => const SizedBox(
            height: 70,
            width: 70,
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (_) => const Text('Found hub'),
          loadFailure: (failure) => const Text('Failure'),
        );
      },
    );
  }
}
