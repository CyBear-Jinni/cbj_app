import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/more_connections_options/more_connections_options_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/connect_to_hub_more/widgets/connect_to_hub_more_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class ConnectToHubMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#985dc7'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor('#9355e5'),
              HexColor('#b162e4'),
            ],
          ),
        ),
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
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
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
                      backgroundColor: HexColor('#985dc7'),
                      foregroundColor: Colors.white,
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
      ),
    );
  }
}
