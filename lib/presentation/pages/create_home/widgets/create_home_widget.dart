import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/create_home/create_home_bloc.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? homeName;
    String? devicesEmail;

    return Column(
      children: [
        Container(
          color: Colors.black54,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: const TextAtom(
            'Name for your home',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent.withOpacity(0.3),
              prefixIcon: Icon(
                Icons.home_outlined,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              labelText: 'Home Name',
              labelStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
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
          child: const TextAtom(
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
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent.withOpacity(0.3),
              prefixIcon: Icon(
                Icons.alternate_email,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              labelText: 'Email for smart devices',
              labelStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
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
          child: TextAtom(
            'Smart devices needs account to function.\nPlease enter new email.',
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
          ),
          onPressed: () {
            context
                .read<CreateHomeBloc>()
                .add(CreateHomeEvent.createHome(homeName!, devicesEmail!));
          },
          child: TextAtom(
            'Create Home',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ),
        ),
        BlocBuilder<CreateHomeBloc, CreateHomeState>(
          builder: (context, state) {
            return state.map(
              (value) {
                return const TextAtom('');
              },
              loading: (loadingNow) {
                return const CircularProgressIndicatorAtom();
              },
              error: (errorNow) {
                FlushbarHelper.createError(message: 'Error');
                return const TextAtom('Error');
              },
              loaded: (_) {
                context.router.replace(const HomeRoute());
                return const TextAtom('Loaded');
              },
            );
          },
        ),
      ],
    );
  }
}
