import 'package:cybear_jinni/application/cbj_comp/cbj_comp_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/configure_new_cbj_comp/widgets/configure_new_cbj_comp_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfigureNewCbjCompPage extends StatelessWidget {
  const ConfigureNewCbjCompPage({
    @required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  @override
  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CBJCompBloc>()..add(const CBJCompEvent.initialized()),
      child: Scaffold(
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              TopNavigationBar(
                'Add CBJ Computer',
                null,
                null,
                leftIcon: FontAwesomeIcons.arrowLeft,
                leftIconFunction: () {},
              ),
              Expanded(
                child: ConfigureNewCbjCompWidgets(cbjCompEntity: cbjCompEntity),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
