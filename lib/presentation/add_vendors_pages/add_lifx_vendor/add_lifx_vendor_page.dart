import 'package:cybear_jinni/application/lifx_auth/lifx_sign_in_form/lifx_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_vendors_pages/add_lifx_vendor/widgets/lifx_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddLifxVendorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Lifx Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<LifxSignInFormBloc>(),
        child: LifxSignInForm(),
      ),
    );
  }
}
