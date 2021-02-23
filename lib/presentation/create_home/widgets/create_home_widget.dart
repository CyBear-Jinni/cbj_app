import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/create_home/create_home_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String homeName;
    String devicesEmail;

    return Column(
      children: [
        Container(
            color: Colors.black54,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: const Text(
              'Name for your home',
              style: TextStyle(fontSize: 20),
            )),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent.withOpacity(0.3),
              prefixIcon: const Icon(Icons.home_outlined, color: Colors.white),
              labelText: 'Home Name',
              labelStyle: const TextStyle(color: Colors.white),
            ),
            autocorrect: false,
            onChanged: (value) {
              homeName = value;
            },
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          color: Colors.black54,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: const Text(
            'Email for the Smart Devices',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent.withOpacity(0.3),
              prefixIcon: const Icon(
                Icons.alternate_email,
                color: Colors.white,
              ),
              labelText: 'Email for smart devices',
              labelStyle: const TextStyle(color: Colors.white),
            ),
            autocorrect: false,
            onChanged: (value) {
              devicesEmail = value;
            },
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 48),
          child: const Text(
            'Smart devices needs account to function.\nPlease enter new email.',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FlatButton(
            onPressed: () {
              context
                  .read<CreateHomeBloc>()
                  .add(CreateHomeEvent.createHome(homeName, devicesEmail));
            },
            color: Colors.pinkAccent,
            child: const Text(
              'Create Home',
              style: TextStyle(color: Colors.white),
            )),
        BlocBuilder<CreateHomeBloc, CreateHomeState>(
          builder: (context, state) {
            return state.map(
              (value) {
                return const Text('');
              },
              loading: (loadingNow) {
                return const CircularProgressIndicator();
              },
              error: (errorNow) {
                FlushbarHelper.createError(message: 'Error');
                return const Text('Error');
              },
              loaded: (_) {
                ExtendedNavigator.of(context).replace(Routes.homePage);
                return const Text('Loaded');
              },
            );
          },
        ),
      ],
    );
  }
}
