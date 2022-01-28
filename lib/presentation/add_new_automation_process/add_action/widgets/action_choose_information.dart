import 'package:cybear_jinni/application/add_new_action/add_new_action_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

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
                      'Choose Device',
                      style: TextStyle(fontSize: 27),
                    ),
                  ],
                ),
                MultiSelectDialogField(
                  items: List<MultiSelectItem<String?>>.of(
                    state.allDevices.map(
                      (e) => MultiSelectItem(
                        e.uniqueId.getOrCrash(),
                        e.defaultName.getOrCrash()!,
                      ),
                    ),
                  ),
                  listType: MultiSelectListType.CHIP,
                  onConfirm: (List<String?> values) {},
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
