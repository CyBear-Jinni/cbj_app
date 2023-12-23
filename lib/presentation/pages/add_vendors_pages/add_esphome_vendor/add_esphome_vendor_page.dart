import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/pages/add_vendors_pages/add_esphome_vendor/widgets/esphome_sign_in_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddEspHomeVendorPage extends StatelessWidget {
  const AddEspHomeVendorPage(this.vendor);

  final VendorData vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const TextAtom('EspHome Sign In'),
      ),
      body: EspHomeSignInForm(vendor),
    );
  }
}
