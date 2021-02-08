import 'package:cybear_jinni/presentation/home_page/tabs/scene_tab/scenes_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScenesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScenesWidgets(),
    );
    // BlocProvider(
    //   create: (context) => getIt<SignInFormBloc>(),
    //   child: SignInForm(),
    // ),
  }
}
