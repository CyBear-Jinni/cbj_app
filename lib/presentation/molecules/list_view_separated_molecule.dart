import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/cupertino.dart';

class ListViewSeparatedMolecule extends StatelessWidget {
  const ListViewSeparatedMolecule({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.shrinkWrap = false,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      reverse: reverse,
      itemBuilder: (BuildContext context, int index) =>
          itemBuilder(context, index),
      separatorBuilder: (context, index) => const SeparatorAtom(),
    );
  }
}
