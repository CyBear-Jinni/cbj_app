import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/add_vendors_pages/add_smart_life_vendor/widgets/smart_life_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddSmartLifeVendorPage extends StatelessWidget {
  const AddSmartLifeVendorPage(this.vendor);

  final VendorData vendor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const TextAtom('Smart Life Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<TuyaSignInFormBloc>(),
        child: SmartLifeSignInForm(vendor),
      ),
    );
  }
}
