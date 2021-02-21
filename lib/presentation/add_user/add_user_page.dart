import 'package:cybear_jinni/application/add_user/add_user_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_user/widgets/add_user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add user'),
      ),
      backgroundColor: Colors.blueGrey,
      body: BlocProvider(
        create: (context) => getIt<AddUserBloc>(),
        child: AddUserWidget(),
      ),
    );
  }
}
