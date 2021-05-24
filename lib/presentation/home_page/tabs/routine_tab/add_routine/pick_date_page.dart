import 'package:cybear_jinni/presentation/home_page/tabs/routine_tab/add_routine/time_drop_down_menu.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Choose date
class PickDatePage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const <double>[0, 0, 0, 1],
            colors: <Color>[
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              'Pick a date',
              null,
              () {},
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Time'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      TimeDropDownMenu(getHoursInADay()),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        ':',
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TimeDropDownMenu(getMinutesInAHours()),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Repeat'),
                  const SizedBox(
                    height: 15,
                  ),
                  TimeDropDownMenu(getRepeatOptions()),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Date'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      TimeDropDownMenu(getNumbersOfDaysInAMonth()),
                      const SizedBox(
                        width: 12,
                      ),
                      TimeDropDownMenu(getMonths()),
                      const SizedBox(
                        width: 12,
                      ),
                      TimeDropDownMenu(getYears()),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        side: MaterialStateProperty.all(
                          BorderSide.lerp(
                              const BorderSide(), const BorderSide(), 30),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'OK',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 22.0,
                            color: Theme.of(context).textTheme.bodyText2.color),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static String getFirstValue(List<String> list) {
    return list.first;
  }

  static List<String> getRepeatOptions() {
    return <String>['never', 'hourly', 'daily', 'weekly', 'monthly', 'yearly'];
  }

  static List<String> getMonths() {
    return <String>[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dez'
    ];
  }

  static List<String> getYears() {
    final List<String> listOfYears = <String>[];

    for (int i = 2021; i < 2050; i++) {
      listOfYears.add(i.toString());
    }

    return listOfYears;
  }

  static List<String> getMinutesInAHours() {
    final List<String> listOfMinutesInAHours = <String>[];

    for (int i = 0; i < 60; i++) {
      listOfMinutesInAHours.add(numberWithZeroIfSmallerThanTen(i));
    }

    return listOfMinutesInAHours;
  }

  static List<String> getHoursInADay() {
    final List<String> listOfHoursInADay = <String>[];
    for (int i = 0; i < 23; i++) {
      listOfHoursInADay.add(numberWithZeroIfSmallerThanTen(i));
    }

    return listOfHoursInADay;
  }

  static List<String> getNumbersOfDaysInAMonth() {
    final List<String> listOfDaysInAMonth = <String>[];

    for (int i = 1; i < 30; i++) {
      listOfDaysInAMonth.add(numberWithZeroIfSmallerThanTen(i));
    }

    return listOfDaysInAMonth;
  }

  /// Get Number and return it with zero at the beginning if it smaller than 10
  static String numberWithZeroIfSmallerThanTen(int number) {
    if (number < 10) {
      return '0$number';
    }

    return number.toString();
  }
}
