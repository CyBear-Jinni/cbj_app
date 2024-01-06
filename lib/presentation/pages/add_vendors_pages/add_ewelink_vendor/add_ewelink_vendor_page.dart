import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/pages/add_vendors_pages/add_ewelink_vendor/widgets/ewelink_sign_in_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddEwelinkVendorPage extends StatelessWidget {
  const AddEwelinkVendorPage(this.vendor);

  final VendorData vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const TextAtom('eWeLink Sign In'),
      ),
      body: EwelinkSignInForm(vendor),
    );
  }
}
