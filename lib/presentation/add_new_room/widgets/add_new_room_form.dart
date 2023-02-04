import 'package:cybear_jinni/application/room/create_new_room_form/room_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/room/room_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class AddNewRoomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<RoomSignInFormBloc, RoomSignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: screenSize.height * 0.83),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon:
                                  FaIcon(FontAwesomeIcons.rightToBracket),
                              labelText: 'Area Name',
                            ),
                            autocorrect: false,
                            onChanged: (value) =>
                                context.read<RoomSignInFormBloc>().add(
                                      RoomSignInFormEvent.defaultNameChanged(
                                        value,
                                      ),
                                    ),
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
                          MultiSelectDialogField(
                            buttonText: const Text(
                              'Select_Purposes_Of_The_Area',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ).tr(),
                            cancelText: const Text('CANCEL').tr(),
                            confirmText: const Text('OK').tr(),
                            title: const Text('Select').tr(),
                            items: AreaPurposesTypes.values
                                .map((AreaPurposesTypes areaPurposeType) {
                              final String tempAreaName = areaPurposeType.name
                                  .substring(1, areaPurposeType.name.length);
                              String areaNameEdited = areaPurposeType.name
                                  .substring(0, 1)
                                  .toUpperCase();
                              for (final String a in tempAreaName.characters) {
                                if (a[0] == a[0].toUpperCase()) {
                                  areaNameEdited += ' ';
                                }
                                areaNameEdited += a;
                              }

                              return MultiSelectItem(
                                areaPurposeType.value,
                                areaNameEdited,
                              );
                            }).toList(),
                            listType: MultiSelectListType.CHIP,
                            onConfirm: (List<int> values) {
                              context.read<RoomSignInFormBloc>().add(
                                    RoomSignInFormEvent.roomTypesChanged(
                                      values.map((e) => e.toString()).toList(),
                                    ),
                                  );
                              // _selectedAnimals = values;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
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
                              textColor:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                              fontSize: 16.0,
                            );
                            Navigator.pop(context);
                          },
                          child: const Text('ADD').tr(),
                        ),
                      ),
                    ],
                  ),
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
        );
      },
    );
  }
}
