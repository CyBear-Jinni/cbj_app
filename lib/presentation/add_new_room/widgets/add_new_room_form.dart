import 'package:cybear_jinni/application/room/create_new_room_form/room_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewRoomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<RoomSignInFormBloc, RoomSignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: FaIcon(FontAwesomeIcons.rightToBracket),
                        labelText: 'Area Name',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<RoomSignInFormBloc>()
                          .add(RoomSignInFormEvent.defaultNameChanged(value)),
                      validator: (_) => context
                          .read<RoomSignInFormBloc>()
                          .state
                          .defaultName
                          .value
                          .fold(
                            (RoomFailure f) => 'Validation error',
                            (r) => null,
                          ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // TODO: Add select type of room
                    // MultiSelectDialogField(
                    //   items: [
                    //     'Sleep',
                    //     'Game',
                    //     'Eat',
                    //     'Out Side',
                    //   ].map((e) => MultiSelectItem(e, e)).toList(),
                    //   listType: MultiSelectListType.CHIP,
                    //   onConfirm: (values) {
                    //     context.read<RoomSignInFormBloc>().add(
                    //           RoomSignInFormEvent.roomTypesChanged(
                    //             values as List<String>,
                    //           ),
                    //         );
                    //     // _selectedAnimals = values;
                    //   },
                    // ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<RoomSignInFormBloc>().add(
                                    const RoomSignInFormEvent.createRoom(),
                                  );
                              Fluttertoast.showToast(
                                msg: 'Adding area',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.purple,
                                textColor: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 16.0,
                              );
                              Navigator.pop(context);
                            },
                            child: const Text('ADD').tr(),
                          ),
                        ),
                      ],
                    ),
                    if (state.isSubmitting) ...[
                      const SizedBox(
                        height: 8,
                      ),
                      const LinearProgressIndicator()
                    ],
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
