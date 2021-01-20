import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Top part of the pages, will show page name and settings logo,
/// and sometimes will have back button.
class TopNavigationBar extends StatelessWidget {
  TopNavigationBar(this.pageName, this.righIcon, this.righIconFunction,
      {this.leftIcon, this.leftIconFunction}) {}

  /// Page name to showw in the left side of the navigation bar
  String pageName;

  /// Icon to show in the right side of the bar
  IconData righIcon;

  /// Icon to show in the left side of the bar
  IconData leftIcon;

  /// Function to execute when pressing the icon in the right side
  Function righIconFunction;

  /// What to execute if back button was pressed
  Function leftIconFunction;

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
                leftIcon != null
                    ? Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: FaIcon(leftIcon,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          onPressed: () => leftIconFunction(context),
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
            righIcon != null
                ? SizedBox(
                    width: 25,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => righIconFunction(context),
                      child: FaIcon(
                        righIcon,
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
