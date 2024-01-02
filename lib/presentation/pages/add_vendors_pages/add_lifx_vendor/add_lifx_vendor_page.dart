import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/pages/add_vendors_pages/add_lifx_vendor/widgets/lifx_sign_in_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddLifxVendorPage extends StatelessWidget {
  const AddLifxVendorPage(this.vendor);

  final VendorData vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const TextAtom('Lifx Sign In'),
      ),
      body: LifxSignInForm(vendor),
    );
  }
}
