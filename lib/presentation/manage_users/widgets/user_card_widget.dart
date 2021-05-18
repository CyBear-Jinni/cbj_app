import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserCard extends StatelessWidget {
  final HomeUserEntity homeUser;

  const UserCard({
    Key key,
    @required this.homeUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
          bottom: BorderSide(
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ),
      ),
      height: 100,
      child: Center(
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.userGraduate,
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                homeUser.email.getOrCrash(),
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
