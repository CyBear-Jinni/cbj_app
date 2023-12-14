import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new routine
@RoutePage()
class PickRepeatTimePage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    final List<DayInWeek> days = [
      DayInWeek('Sun', dayKey: 'Sun'),
      DayInWeek('Mon', dayKey: 'Mon'),
      DayInWeek('Tue', dayKey: 'Tue', isSelected: true),
      DayInWeek('Wed', dayKey: 'Wed'),
      DayInWeek('Thu', dayKey: 'Thu'),
      DayInWeek('Fri', dayKey: 'Fri'),
      DayInWeek('Sat', dayKey: 'Sat'),
    ];

    RoutineCbjRepeatDateDays? daysToRepeat;
    RoutineCbjRepeatDateHour? hourToRepeat;
    RoutineCbjRepeatDateMinute? minutesToRepeat;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopBarMolecule(
              pageName: 'Pick Time',
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const TextAtom(
                          'Pick days and hour for the Routine to Repeat',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SelectWeekDays(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          days: days,
                          border: false,
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              colors: [Color(0xFFE55CE4), Color(0xFFBB75FB)],
                              tileMode: TileMode.repeated,
                            ),
                          ),
                          onSelect: (List<String> values) {
                            daysToRepeat = RoutineCbjRepeatDateDays(values);
                          },
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        showPicker(
                          isInlinePicker: true,
                          is24HrFormat: true,
                          value: Time(hour: 4, minute: 44),
                          onChange: (TimeOfDay dateTimePicked) {
                            hourToRepeat = RoutineCbjRepeatDateHour(
                              dateTimePicked.hour.toString(),
                            );
                            minutesToRepeat = RoutineCbjRepeatDateMinute(
                              dateTimePicked.minute.toString(),
                            );
                          },
                          cancelText: '',
                          okText: 'Confirm Time',
                        ) as Widget,
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.blue.withOpacity(0.5),
                            ),
                            side: MaterialStateProperty.all(
                              BorderSide.lerp(
                                const BorderSide(),
                                const BorderSide(),
                                30,
                              ),
                            ),
                          ),
                          onPressed: () {
                            if (daysToRepeat != null &&
                                daysToRepeat!.getOrCrash()!.isNotEmpty &&
                                hourToRepeat != null &&
                                minutesToRepeat != null) {
                              context.router.push(
                                AddRoutineRoute(
                                  daysToRepeat: daysToRepeat!,
                                  hourToRepeat: hourToRepeat!,
                                  minutesToRepeat: minutesToRepeat!,
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (_) => const AlertDialog(
                                  title: TextAtom(
                                    'Please choose days to repeat as well as time',
                                  ),
                                ),
                              );
                            }
                          },
                          child: const TextAtom(
                            'Next',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
