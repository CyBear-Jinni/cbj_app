import 'package:cybear_jinni/application/add_new_routine/add_new_routine_bloc.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_automation_process/add_routine/widgets/add_routine_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new routine
class AddRoutinePage extends StatelessWidget {
  AddRoutinePage({
    required this.daysToRepeat,
    required this.hourToRepeat,
    required this.minutesToRepeat,
  });

  final RoutineCbjRepeatDateDays daysToRepeat;
  final RoutineCbjRepeatDateHour hourToRepeat;
  final RoutineCbjRepeatDateMinute minutesToRepeat;

  void backButtonFunction(BuildContext context) {
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
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Add Routine',
              rightIcon: null,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            BlocProvider(
              create: (context) => getIt<AddNewRoutineBloc>()
                ..add(
                  AddNewRoutineEvent.addRoutineDate(
                    daysToRepeat: daysToRepeat,
                    hourToRepeat: hourToRepeat,
                    minutesToRepeat: minutesToRepeat,
                  ),
                ),
              child: AddRoutineWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
