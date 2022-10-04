import 'package:cybear_jinni/application/plus_button_settings/plus_button_settings_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/plus_button/widgets/plus_button_wighet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlusButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add and Manage'),
        backgroundColor: Colors.purple.withOpacity(0.7),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: BlocProvider(
        create: (BuildContext context) => getIt<PlusButtonSettingsBloc>()
          ..add(
            PlusButtonSettingsEvent.initialized(context),
          ),
        child: PlusButtonWidget(),
      ),
    );
  }
}
