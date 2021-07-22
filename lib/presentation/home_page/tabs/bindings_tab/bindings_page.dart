import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/bindings_tab/add_bindings/add_bindings_page.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to see and interact with all the set routines
class BindingsPage extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '⚙️ Bindings Settings',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void rightSecondFunction(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: <Widget>[
            TopNavigationBar(
              'Bindings',
              Icons.more_vert,
              userCogFunction,
              leftIcon: FontAwesomeIcons.userCog,
              leftIconFunction: leftIconFunction,
              rightSecondIcon: FontAwesomeIcons.search,
              rightSecondFunction: rightSecondFunction,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Bindings List',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 70),
                color: Colors.black.withOpacity(0.4),
                child: ListView(),
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Expanded(
              child: Text(''),
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddBindingsPage()));
                      },
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.black12,
                          shape: CircleBorder(),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.9),
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
