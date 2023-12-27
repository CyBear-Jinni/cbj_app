import 'package:cybearjinni/presentation/core/theme_data.dart';
import 'package:flutter/cupertino.dart';

class SeparatorAtom extends StatelessWidget {
  const SeparatorAtom(this.variant);

  final SeparatorVariant variant;

  @override
  Widget build(BuildContext context) {
    double spacing;
    switch (variant) {
      case SeparatorVariant.extenstionOfElement:
        spacing = 2;
      case SeparatorVariant.reletedElements:
        spacing = 5;
      case SeparatorVariant.closeWidgets:
        spacing = 10;
      case SeparatorVariant.generalSpacing:
        spacing = AppThemeData.generalSpacing;
      case SeparatorVariant.farAppart:
        spacing = 45;
    }
    return SizedBox(
      height: spacing,
      width: spacing,
    );
  }
}

enum SeparatorVariant {
  extenstionOfElement,
  reletedElements,
  closeWidgets,
  generalSpacing,
  farAppart,
  ;
}
