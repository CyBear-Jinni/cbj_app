import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ChangeRoomForDevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#303030'),
        brightness: Brightness.dark,
      ),
      backgroundColor: HexColor('#303030'),
      body: Column(
        children: [
          TopNavigationBar(
            'Change Room For Devices',
            null,
            () {},
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: () {},
          ),
          SingleChildScrollView(
            child: Container(
              color: HexColor('#3A3A3A'),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
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
                    items: [
                      'Device 1',
                      'Device 2',
                      'Device 3',
                      'Device 4',
                    ].map((e) => MultiSelectItem(e, e)).toList(),
                    listType: MultiSelectListType.CHIP,
                    onConfirm: (values) {
                      // _selectedAnimals = values;
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Room',
                        style: TextStyle(fontSize: 27),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'New Room',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  DropdownButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: const Text(
                      'Choose Room',
                      style: TextStyle(color: Colors.white),
                    ),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (value) {
                      // context
                      //     .read<TuyaSignInFormBloc>()
                      //     .add(TuyaSignInFormEvent.regionChanged(value));
                    },
                    items: <String>[
                      'First Room',
                      'Second Room',
                      'Third Room',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}
