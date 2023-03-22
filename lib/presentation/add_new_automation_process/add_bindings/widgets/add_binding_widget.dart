import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/add_new_binding/add_new_binding_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:cybear_jinni/presentation/add_new_automation_process/add_bindings/widgets/binding_action_widget.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddBindingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewBindingBloc, AddNewBindingState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Text('Initial'),
          loadPageState: (loadPageState) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: FaIcon(FontAwesomeIcons.fileSignature),
                      labelText: 'Binding Name',
                    ),
                    onChanged: (value) {
                      context.read<AddNewBindingBloc>().add(
                            AddNewBindingEvent.bindingNameChange(
                              value,
                            ),
                          );
                    },
                  ),
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      itemCount: loadPageState.allDevicesWithNewAction.length,
                      itemBuilder: (BuildContext context, int index) {
                        final MapEntry<DeviceEntityAbstract,
                                MapEntry<String?, String?>> currentDevice =
                            loadPageState.allDevicesWithNewAction[index];

                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 1),
                          child: BindingActionWidget(
                            deviceEntityAbstract: currentDevice.key,
                            propertyToChange:
                                currentDevice.value.key ?? 'Missing property',
                            actionToChange: currentDevice.value.value ??
                                DeviceActions.actionNotSupported.toString(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.withOpacity(0.5),
                      // Red border with the width is equal to 5
                      border: Border.all(),
                    ),
                    child: TextButton(
                      onPressed: () {
                        showAdaptiveActionSheet(
                          context: context,
                          actions: <BottomSheetAction>[
                            BottomSheetAction(
                              title: const Text(
                                'Add device action',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 23,
                                ),
                              ),
                              onPressed: (_) async {
                                final List<
                                        MapEntry<DeviceEntityAbstract,
                                            MapEntry<String?, String?>>>?
                                    actionList = await context.router.push<
                                        List<
                                            MapEntry<DeviceEntityAbstract,
                                                MapEntry<String?, String?>>>>(
                                  const AddActionRoute(),
                                );
                                if (actionList != null) {
                                  context.read<AddNewBindingBloc>().add(
                                        AddNewBindingEvent
                                            .addDevicesWithNewActions(
                                          actionList,
                                        ),
                                      );
                                }
                              },
                            ),
                            BottomSheetAction(
                              title: Text(
                                'Add service action',
                                style: TextStyle(
                                  color: Colors.green.shade600,
                                  fontSize: 23,
                                ),
                              ),
                              onPressed: (_) {
                                Fluttertoast.showToast(
                                  msg:
                                      'Adding service action will be added in the future',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.blueGrey,
                                  textColor: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                  fontSize: 16.0,
                                );
                              },
                            ),
                            BottomSheetAction(
                              title: const Text(
                                'Add time based action',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 23,
                                ),
                              ),
                              onPressed: (_) {
                                Fluttertoast.showToast(
                                  msg:
                                      'Adding time based action will be added in the future',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.blueGrey,
                                  textColor: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                  fontSize: 16.0,
                                );
                              },
                            ),
                          ],
                        );
                      },
                      child: const Text('+ Add action'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.withOpacity(0.5),
                      // Red border with the width is equal to 5
                      border: Border.all(),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Adding Binding',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.blueGrey,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge!.color,
                          fontSize: 16.0,
                        );
                        context.read<AddNewBindingBloc>().add(
                              const AddNewBindingEvent.sendBindingToHub(),
                            );
                      },
                      child: const Text('Add Binding'),
                    ),
                  ),
                ],
              ),
            );
          },
          loadInProgress: (loadInProgress) {
            return const Text('loadInProgress');
          },
        );
      },
    );
  }
}
