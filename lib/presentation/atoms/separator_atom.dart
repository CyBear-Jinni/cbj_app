import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:flutter/cupertino.dart';

class SeparatorAtom extends StatelessWidget {
  const SeparatorAtom({super.key, this.multiple = 1});

  final double multiple;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppThemeData.generalSpacing * multiple,
      width: AppThemeData.generalSpacing,
    );
  }
}
