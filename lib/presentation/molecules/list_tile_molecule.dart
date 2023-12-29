import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class ListTileAtom extends StatelessWidget {
  const ListTileAtom({
    this.headline,
    this.supportingText,
    this.leadingIcon,
    this.onTap,
  });

  final String? headline;
  final String? supportingText;
  final IconData? leadingIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: headline != null ? TextAtom(headline!) : null,
      subtitle: supportingText != null ? TextAtom(supportingText!) : null,
      leading: leadingIcon != null ? IconAtom(leadingIcon!) : null,
      onTap: onTap,
    );
  }
}
