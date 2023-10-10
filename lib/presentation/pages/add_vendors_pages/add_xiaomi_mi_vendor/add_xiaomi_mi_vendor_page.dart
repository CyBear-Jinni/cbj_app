import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/xiaomi_mi_auth/xiaomi_mi_sign_in_form/xiaomi_mi_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/add_vendors_pages/add_xiaomi_mi_vendor/widgets/xiaomi_mi_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddXiaomiMiVendorPage extends StatelessWidget {
  const AddXiaomiMiVendorPage(this.vendor);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('XiaomiMi Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<XiaomiMiSignInFormBloc>(),
        child: XiaomiMiSignInForm(vendor),
      ),
    );
  }
}
