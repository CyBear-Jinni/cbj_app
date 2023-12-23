import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Top part of the pages, will show page name and settings logo,
/// and sometimes will have back button.
class TopBarMolecule extends StatelessWidget {
  const TopBarMolecule({
    required this.pageName,
    this.rightIcon,
    this.rightIconFunction,
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
  final Function(BuildContext)? rightIconFunction;

  /// What to execute if second right icon was pressed
  final Function(BuildContext)? rightSecondFunction;

  /// What to execute if back button was pressed
  final Function(BuildContext)? leftIconFunction;

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
                      onPressed: () => leftIconFunction!(context),
                    ),
                  )
                else
                  const SizedBox(),
                TextAtom(
                  pageName!,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
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
