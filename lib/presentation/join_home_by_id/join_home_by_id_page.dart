import 'package:cybear_jinni/application/join_home_by_id/join_home_by_id_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/join_home_by_id/widgets/join_home_by_id_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JoinHomeByIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add home by ID'),
      ),
      backgroundColor: Colors.blueAccent.withOpacity(0.7),
      body: BlocProvider(
        create: (context) => getIt<JoinHomeByIdBloc>(),
        child: JoinHomeByIdWidget(),
      ),
    );
  }
}
