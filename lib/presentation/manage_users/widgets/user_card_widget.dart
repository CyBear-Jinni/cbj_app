import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserCard extends StatelessWidget {
  final UserEntity user;

  const UserCard({
    Key key,
    @required this.user,
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
            children: [
              Text(
                user.email.getOrCrash(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
