import 'package:flutter/material.dart';

class CardAtom extends StatelessWidget {
  const CardAtom(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: child,
    );
  }
}
