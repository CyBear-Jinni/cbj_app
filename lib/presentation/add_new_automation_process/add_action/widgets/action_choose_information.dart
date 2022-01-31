import 'package:cybear_jinni/application/add_new_action/add_new_action_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class ActionChooseInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNewActionBloc, AddNewActionState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            color: HexColor('#3A3A3A'),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: const [
                    Text(
                      'Choose Action',
                      style: TextStyle(fontSize: 27),
                    ),
                  ],
                ),
                DropdownButton<String>(
                  dropdownColor: Colors.black,
                  style: const TextStyle(color: Colors.white),
                  icon: const Icon(Icons.arrow_drop_down),
                  hint: Text(
                    state.allDevicesWithNewAction.isNotEmpty
                        ? state.allDevicesWithNewAction[0].defaultName
                            .getOrCrash()!
                        : 'Choose Device',
                    style: const TextStyle(color: Colors.white),
                  ),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (value) {
                    context
                        .read<AddNewActionBloc>()
                        .add(AddNewActionEvent.changeActionDevices(value!));
                  },
                  items: state.allDevices.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      value: e.uniqueId.getOrCrash(),
                      child: Text(e.defaultName.getOrCrash()!),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 40,
                ),
                DropdownButton<String>(
                  dropdownColor: Colors.black,
                  style: const TextStyle(color: Colors.white),
                  icon: const Icon(Icons.arrow_drop_down),
                  hint: Text(
                    state.actionsName != ''
                        ? state.actionsName
                        : 'Choose Action',
                    style: const TextStyle(color: Colors.white),
                  ),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (value) {
                    context
                        .read<AddNewActionBloc>()
                        .add(AddNewActionEvent.actionsNameChange(value!));
                  },
                  items: state.allDevicesWithNewAction.isNotEmpty
                      ? state.allDevicesWithNewAction[0]
                          .getAllValidActions()
                          .map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          );
                        }).toList()
                      : <DropdownMenuItem<String>>[
                          const DropdownMenuItem<String>(
                            value: 'Choose device first',
                            child: Text('Choose device first'),
                          )
                        ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Changing devices for area',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.purple,
                          textColor:
                              Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 16.0,
                        );
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
