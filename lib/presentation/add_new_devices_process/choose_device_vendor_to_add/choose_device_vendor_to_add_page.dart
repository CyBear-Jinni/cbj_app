import 'package:cybear_jinni/application/vendors/vendors_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/choose_device_vendor_to_add/widgets/vendors_list.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ChooseDeviceVendorToAddPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Add Service',
              rightIcon: null,
              // FontAwesomeIcons.magnifyingGlass,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              alignment: Alignment.centerLeft,
              child: Text(
                'Vendors:',
                style: TextStyle(color: HexColor('#6599CA'), fontSize: 20),
              ),
            ),
            Expanded(
              child: BlocProvider(
                create: (context) =>
                    getIt<VendorsBloc>()..add(const VendorsEvent.initialized()),
                child: VendorsList(),
              ),
            ),
            const SizedBox(
              height: 50,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
