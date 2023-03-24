import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_vendors_pages/add_jinvoo_smart_vendor/widgets/jinvoo_smart_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddJinvooSmartVendorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Jinvoo Smart Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<TuyaSignInFormBloc>(),
        child: JinvooSmartSignInForm(),
      ),
    );
  }
}
