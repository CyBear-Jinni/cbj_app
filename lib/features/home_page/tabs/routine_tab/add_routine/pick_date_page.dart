import 'package:cybear_jinni/features/home_page/tabs/routine_tab/add_routine/time_drop_down_menu.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Choose date
class PickDatePage extends StatelessWidget {
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
            Container(
              color: Colors.black.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.fromLTRB(9, 25, 9, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.arrowLeft,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Text(
                          'Pick a date',
                          style: TextStyle(
                              fontSize: 16.0,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                        ).tr(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Time'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      TimeDropDownMenu(GetHoursInADay()),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ':',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TimeDropDownMenu(GetMinutesInAHours()),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Repeat'),
                  SizedBox(
                    height: 15,
                  ),
                  TimeDropDownMenu(GetRepeatOptions()),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Date'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      TimeDropDownMenu(GetNumbersOfDaysInAMonth()),
                      SizedBox(
                        width: 12,
                      ),
                      TimeDropDownMenu(GetMonths()),
                      SizedBox(
                        width: 12,
                      ),
                      TimeDropDownMenu(GetYears()),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      color: Colors.black,
                      child: Text(
                        "OK",
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

  static String GetFirstValue(List<String> list) {
    return list.first;
  }

  static List<String> GetRepeatOptions() {
    return <String>['never', 'hourly', 'daily', 'weekly', 'monthly', 'yearly'];
  }

  static List<String> GetMonths() {
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

  static List<String> GetYears() {
    final List<String> listOfYears = <String>[];

    for (int i = 2021; i < 2050; i++) {
      listOfYears.add(i.toString());
    }

    return listOfYears;
  }

  static List<String> GetMinutesInAHours() {
    final List<String> listOfMinutesInAHours = <String>[];

    for (int i = 0; i < 60; i++) {
      listOfMinutesInAHours.add(numberWithZeroIfSmallerThanTen(i));
    }

    return listOfMinutesInAHours;
  }

  static List<String> GetHoursInADay() {
    final List<String> listOfHoursInADay = <String>[];
    for (int i = 0; i < 23; i++) {
      listOfHoursInADay.add(numberWithZeroIfSmallerThanTen(i));
    }

    return listOfHoursInADay;
  }

  static List<String> GetNumbersOfDaysInAMonth() {
    final List<String> listOfDaysInAMonth = <String>[];

    for (int i = 0; i < 30; i++) {
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
