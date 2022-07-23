import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new routine
class PickRepeatTimePage extends StatelessWidget {
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
              pageName: 'Pick Time',
              rightIcon: null,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Column(
              children: [
                const Text(
                  'Pick a Time for Routine to Repeat',
                ),
                const SizedBox(
                  height: 100,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 100),
                  child: DateTimePicker(
                    type: DateTimePickerType.time,
                    dateLabelText: 'Date',
                    onChanged: (val) {},
                    validator: (val) {
                      return null;
                    },
                    onSaved: (val) {},
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.router.push(const AddRoutineRoute());
                  },
                  child: const Text(
                    'Next',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
