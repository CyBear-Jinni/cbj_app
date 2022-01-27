import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for the user to decide what kind of Scene he wants to add
class ChooseSceneTypeToAddPage extends StatelessWidget {
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
              pageName: 'Add Automations',
              rightIcon: null,
              // FontAwesomeIcons.search,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const Text(
                    'Do several things at once or start actions'
                    ' automatically by trigger',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Please choose your automation trigger',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.lightBlueAccent.withOpacity(0.5),
                    child: Row(
                      children: [
                        Text(
                          'Scenes - ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Triggered by user click',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.yellow.withOpacity(0.5),
                    child: Row(
                      children: [
                        Text(
                          'Routines - ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Triggered by time',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.greenAccent.withOpacity(0.5),
                    child: Row(
                      children: [
                        Text(
                          'Bindings - ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Triggered by computer/service',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
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
