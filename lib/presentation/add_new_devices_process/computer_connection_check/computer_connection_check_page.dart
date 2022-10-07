import 'package:cybear_jinni/application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/computer_connection_check/widgets/computer_connection_check_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComputerConnectionCheckPage extends StatelessWidget {
  const ComputerConnectionCheckPage({
    required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Final setting up step',
              rightIcon: null,
              rightIconFunction: null,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: leftIconFunction,
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => getIt<ConfigureNewCbjCompBloc>()
                  ..add(const ConfigureNewCbjCompEvent.initialized()),
                child:
                    ComputerConnectionCheckWidget(cbjCompEntity: cbjCompEntity),
              ),
            ),
          ],
        ),
      ),
    );
    //   BlocProvider(
    //   create: (context) =>
    //       getIt<CBJCompBloc>()..add(const CBJCompEvent.initialized()),
    //   child:
    // );
  }
}
