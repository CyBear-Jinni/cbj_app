import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarMolecule extends StatelessWidget {
  const BottomNavigationBarMolecule({
    required this.bottomNaviList,
    required this.onTap,
    required this.pageIndex,
    super.key,
  });

  final List<BottomNavigationBarItemAtom> bottomNaviList;

  final Function(int num) onTap;

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.bottomLeft,
          child: Divider(
            color: Color(0xFF98A3B9),
            height: 1,
            thickness: 0.5,
          ),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedItemColor: colorScheme.primary,
          unselectedItemColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surface,
          items: bottomNaviList,
          currentIndex: pageIndex,
          onTap: onTap,
        ),
      ],
    );
  }
}
