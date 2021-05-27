import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/linked_tab/add_linked/add_linked_page.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to see and interact with all the set routines
class LinkedPage extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '➕ Add Linked',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddLinkedPage()));
          },
        ),
        BottomSheetAction(
          title: const Text(
            '⚙️ Linked Settings',
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
    return Column(
      children: <Widget>[
        TopNavigationBar(
          'Linked',
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
          'Linked List',
          style: TextStyle(fontSize: 30),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 70),
            color: Colors.black.withOpacity(0.4),
            child: ListView(
              children: const [],
            ),
          ),
        ),
      ],
    );
  }
}
