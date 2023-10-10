import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/room/create_new_room_form/room_sign_in_form_bloc.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ChangeRoomForDevicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return BlocConsumer<RoomSignInFormBloc, RoomSignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: HexColor('#3A3A3A'),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose Area',
                    style: TextStyle(fontSize: 27),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(const AddNewRoomRoute());
                    },
                    child: const Text(
                      'Add New Area',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              DropdownButton<String>(
                dropdownColor: Colors.black,
                style: const TextStyle(color: Colors.white),
                icon: const Icon(Icons.arrow_drop_down),
                hint: Text(
                  state.cbjEntityName.isValid()
                      ? state.cbjEntityName.getOrCrash()
                      : 'Choose Area',
                  style: const TextStyle(color: Colors.white),
                ),
                elevation: 16,
                underline: Container(
                  height: 2,
                ),
                onChanged: (value) {
                  context
                      .read<RoomSignInFormBloc>()
                      .add(RoomSignInFormEvent.roomIdChanged(value!));
                },
                items: state.allRooms.map<DropdownMenuItem<String>>((e) {
                  //     .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: e.uniqueId.getOrCrash(),
                    child: Text(e.cbjEntityName.getOrCrash()),
                  );
                }).toList(),
              ),
              SizedBox(
                height: screenSize.height * 0.1,
              ),
              const Row(
                children: [
                  Text(
                    'Choose Device',
                    style: TextStyle(fontSize: 27),
                  ),
                ],
              ),
              Container(
                constraints: BoxConstraints(maxHeight: screenSize.height * 0.5),
                child: SingleChildScrollView(
                  child: MultiSelectDialogField(
                    items: List<MultiSelectItem<String?>>.of(
                      state.allDevices.map(
                        (e) => MultiSelectItem(
                          e.uniqueId.getOrCrash(),
                          e.cbjEntityName.getOrCrash()!,
                        ),
                      ),
                    ),
                    listType: MultiSelectListType.CHIP,
                    onConfirm: (List<String?> values) {
                      context.read<RoomSignInFormBloc>().add(
                            RoomSignInFormEvent.roomDevicesIdChanged(
                              List<String>.from(values),
                            ),
                          );
                    },
                  ),
                ),
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
                        textColor: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16.0,
                      );
                      context.read<RoomSignInFormBloc>().add(
                            RoomSignInFormEvent.changeRoomDevices(context),
                          );
                    },
                    child: const Text(
                      'Done',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
