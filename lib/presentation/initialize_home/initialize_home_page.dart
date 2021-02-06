import 'package:cybear_jinni/application/initialize_home/initialize_home_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/initialize_home/widgets/initial_process.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Loading page when initializing new home
class InitializeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initializing New Smart Home'),
      ),
      body: BlocProvider(
        create: (context) => getIt<InitializeHomeBloc>()
          ..add(const InitializeHomeEvent.initialized()),
        child: InitialProcess(),
      ),
    );
  }
}
