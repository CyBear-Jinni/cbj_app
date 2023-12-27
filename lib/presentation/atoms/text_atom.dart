import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextAtom extends StatelessWidget {
  const TextAtom(
    this.text, {
    super.key,
    this.style = const TextStyle(),
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.translationArgs,
    this.translate = true,
    this.veriant = TextVeriant.regular,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final List<String>? translationArgs;
  final bool translate;
  final TextVeriant veriant;

  @override
  Widget build(BuildContext context) {
    if (veriant == TextVeriant.smallTitle) {
      final ThemeData themeData = Theme.of(context);
      final TextTheme textTheme = themeData.textTheme;
      return Text(
        translate && text.isNotEmpty ? text.tr(args: translationArgs) : text,
        style: textTheme.titleLarge,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      );
    }

    return Text(
      translate && text.isNotEmpty ? text.tr(args: translationArgs) : text,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}

enum TextVeriant {
  regular,
  smallTitle,
  ;
}
