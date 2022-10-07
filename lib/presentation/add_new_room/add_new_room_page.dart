import 'package:cybear_jinni/application/room/create_new_room_form/room_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_room/widgets/add_new_room_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Add New Area'),
      ),
      body: BlocProvider(
        create: (context) => getIt<RoomSignInFormBloc>(),
        child: AddNewRoomForm(),
      ),
    );
  }
}
