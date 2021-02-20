import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final UserEntity user;

  const UserCard({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
      ),
      height: 100,
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.ibb.co/xjHByJX/Founder-Guy-Luz-circle.png',
            ),
          ),
          title: Text(
            user.email.getOrCrash(),
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
