import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/more_connections_options/more_connections_options_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/connect_to_hub_more/widgets/connect_to_hub_more_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            child: Center(
              child: BlocProvider(
                create: (BuildContext context) =>
                    getIt<MoreConnectionsOptionsBloc>()
                      ..add(
                        MoreConnectionsOptionsEvent.initialEvent(
                          context,
                        ),
                      ),
                child: ConnectToHubMoreWidget(),
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
