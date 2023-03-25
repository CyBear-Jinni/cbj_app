import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/create_home/create_home_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/create_home/widgets/create_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Loading page when initializing new home
@RoutePage()
class CreateHomePage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Information'),
      ),
      backgroundColor: Colors.blueAccent.withOpacity(0.7),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          BlocProvider(
            create: (context) => getIt<CreateHomeBloc>()
              ..add(const CreateHomeEvent.initialized()),
            child: CreateHomeWidget(),
          ),
        ],
      ),
    );
  }
}
