import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:cybear_jinni/presentation/pages/add_new_devices_process/choose_device_vendor_to_add/widgets/vendors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class ChooseDeviceVendorToAddPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopBarMolecule(
              pageName: 'Add Service',

              // FontAwesomeIcons.magnifyingGlass,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              alignment: Alignment.centerLeft,
              child: TextAtom(
                'Vendors:',
                style: TextStyle(color: HexColor('#6599CA'), fontSize: 20),
              ),
            ),
            Expanded(
              child: VendorsList(),
            ),
            const SizedBox(
              height: 50,
              child: TextAtom(''),
            ),
          ],
        ),
      ),
    );
  }
}
