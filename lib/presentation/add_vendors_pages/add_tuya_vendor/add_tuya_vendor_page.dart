import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_vendors_pages/add_tuya_vendor/widgets/tuya_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddTuyaVendorPage extends StatelessWidget {
  const AddTuyaVendorPage(this.vendor);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Tuya Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<TuyaSignInFormBloc>(),
        child: TuyaSignInForm(vendor),
      ),
    );
  }
}
