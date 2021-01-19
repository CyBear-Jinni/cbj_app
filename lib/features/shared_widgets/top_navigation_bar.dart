import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Top part of the pages, will show page name and settings logo,
/// and sometimes will have back button.
class TopNavigationBar extends StatelessWidget {
  TopNavigationBar(this.pageName, this.iconInTheRightSide,
      this.functionForIconInTheRightSide,
      {this.backButtonFunction}) {}

  /// Page name to showw in the left side of the navigation bar
  String pageName;

  /// Icon to show in the right side of the bar
  IconData iconInTheRightSide;

  /// Function to execute when pressing the icon in the right side
  Function functionForIconInTheRightSide;

  /// What to execute if back button was pressed
  Function backButtonFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Container(
        margin: const EdgeInsets.fromLTRB(9, 25, 9, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                backButtonFunction != null
                    ? Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.arrowLeft,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          onPressed: () => backButtonFunction(context),
                        ),
                      )
                    : SizedBox(),
                Text(
                  pageName,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).textTheme.bodyText1.color),
                ).tr(),
              ],
            ),
            iconInTheRightSide != null
                ? SizedBox(
                    width: 25,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => functionForIconInTheRightSide(context),
                      child: FaIcon(
                        iconInTheRightSide,
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
