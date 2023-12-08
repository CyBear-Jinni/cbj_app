import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/presentation/pages/add_new_devices_process/computer_connection_check/widgets/computer_connection_check_widget.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class ComputerConnectionCheckPage extends StatelessWidget {
  const ComputerConnectionCheckPage({
    required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  void leftIconFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: ColoredBox(
        color: Colors.black87,
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Final setting up step',
              rightIcon: null,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: leftIconFunction,
            ),
            Expanded(
              child:
                  ComputerConnectionCheckWidget(cbjCompEntity: cbjCompEntity),
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
