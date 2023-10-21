import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Top part of the pages, will show page name and settings logo,
/// and sometimes will have back button.
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    required this.pageName,
    required this.rightIcon,
    required this.rightIconFunction,
    this.leftIcon,
    this.leftIconFunction,
    this.rightSecondIcon,
    this.rightSecondFunction,
    this.backgroundColor,
  });

  /// Page name to show in the left side of the navigation bar
  final String? pageName;

  /// Icon to show in the right side of the bar
  final IconData? rightIcon;

  /// Icon to show in the right side of the bar left to the first icon
  /// from the right
  final IconData? rightSecondIcon;

  /// Icon to show in the left side of the bar
  final IconData? leftIcon;

  /// Function to execute when pressing the icon in the right side
  final Function? rightIconFunction;

  /// What to execute if second right icon was pressed
  final Function? rightSecondFunction;

  /// What to execute if back button was pressed
  final Function? leftIconFunction;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor != null
          ? backgroundColor!.withOpacity(0.72)
          : Colors.black.withOpacity(0.3),
      child: Container(
        margin: const EdgeInsets.fromLTRB(9, 3, 9, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                if (leftIcon != null)
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: FaIcon(
                        leftIcon,
                        size: 19,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                      // ignore: avoid_dynamic_calls
                      onPressed: () => leftIconFunction!(context),
                    ),
                  )
                else
                  const SizedBox(),
                Text(
                  pageName!,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ).tr(),
              ],
            ),
            if (rightIcon != null)
              Row(
                children: [
                  if (rightSecondIcon != null)
                    SizedBox(
                      width: 70,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.zero,
                          ),
                        ),
                        // ignore: avoid_dynamic_calls
                        onPressed: () => rightSecondFunction!(context),
                        child: FaIcon(
                          rightSecondIcon,
                          size: 19,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                    ),
                  SizedBox(
                    width: 25,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.zero,
                        ),
                      ),
                      // ignore: avoid_dynamic_calls
                      onPressed: () => rightIconFunction!(context),
                      child: Icon(
                        rightIcon,
                        size: 26,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                  ),
                ],
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
