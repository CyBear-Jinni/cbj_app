import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CBJCompCard extends StatelessWidget {
  final CBJCompEntity cbjCompEntity;

  const CBJCompCard({
    Key key,
    @required this.cbjCompEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white,
          ),
          bottom: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      height: 100,
      child: Center(
        child: ListTile(
          leading: const FaIcon(
            FontAwesomeIcons.userGraduate,
            color: Colors.white,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Comp name',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
