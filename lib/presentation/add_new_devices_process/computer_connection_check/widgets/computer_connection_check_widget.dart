import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class ComputerConnectionCheckWidget extends StatelessWidget {
  const ComputerConnectionCheckWidget({
    required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  static String deviceNameFieldKey = 'deviceNameField';
  static String devicesDefaultRoomNameField = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigureNewCbjCompBloc, ConfigureNewCbjCompState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            context.read<ConfigureNewCbjCompBloc>().add(
                  const ConfigureNewCbjCompEvent.checkConnectedToWiFiNetwork(),
                );

            return const Expanded(
              child: Center(
                child: SizedBox(
                  height: 80,
                  width: 250,
                  child: Text(
                    'Please reconnect back to you home WiFi',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
          actionInProgress: (ActionInProgress actionInProgress) {
            context.read<ConfigureNewCbjCompBloc>().add(
                  const ConfigureNewCbjCompEvent
                      .searchIfHubOnTheSameWifiNetwork(),
                );
            return Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: const BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Connecting computer to WiFi',
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 250,
                          child: LiquidLinearProgressIndicator(
                            value: actionInProgress.progressPercentage,
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.pink),
                            backgroundColor:
                                Theme.of(context).textTheme.bodyLarge!.color,
                            borderColor: Colors.red.withOpacity(0.9),
                            borderWidth: 4.0,
                            center: const Text(
                              'Loading...',
                              style: TextStyle(color: Colors.black),
                            ),
                            borderRadius: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Searching for CyBear Jinni Hub in your WiFi network',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          completeSuccess: (CompleteSuccess value) {
            context.router.replace(const ConnectToHubRoute());

            FlushbarHelper.createLoading(
              message: 'Hub got connected Successfully to you Home WiFi',
              linearProgressIndicator: const LinearProgressIndicator(),
            ).show(context);

            return const Text('completeSuccess');
          },
          errorInProcess: (ErrorInProcess value) {
            return Expanded(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'Error finding CyBear Jinni Hub in your current'
                      ' network.\n'
                      'Please restart connecting Hub to WiFi process.',
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.replace(const ConnectToHubRoute());
                      },
                      child: const Text('Go Back'),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
