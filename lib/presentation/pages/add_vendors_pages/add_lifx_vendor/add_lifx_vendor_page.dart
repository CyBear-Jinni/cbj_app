import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/application/lifx_auth/lifx_sign_in_form/lifx_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/add_vendors_pages/add_lifx_vendor/widgets/lifx_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddLifxVendorPage extends StatelessWidget {
  const AddLifxVendorPage(this.vendor);

  final VendorData vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Xiaomi Mi Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<LifxSignInFormBloc>(),
        child: LifxSignInForm(vendor),
      ),
    );
  }
}
