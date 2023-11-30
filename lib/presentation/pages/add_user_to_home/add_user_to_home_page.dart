import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/add_user_to_home/add_user_to_home_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/add_user_to_home/widgets/add_user_to_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddUserToHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextAtom('Add user'),
      ),
      backgroundColor: Colors.blueAccent.withOpacity(0.7),
      body: BlocProvider(
        create: (context) => getIt<AddUserToHomeBloc>(),
        child: AddUserToHomeWidget(),
      ),
    );
  }
}
