import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/user_homes_list/user_homes_list_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_minimal/widgets/user_homes_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The user will choose where to login to, join into an existing home or
/// create his new home
class WhereToLoginPageMinimalPage extends StatelessWidget {
  WhereToLoginPageMinimalPage();

  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[200].withOpacity(0.6),
      appBar: AppBar(
        title: const Text('Choose type of login'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              child: Text('What would you like to do',
                  style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.bodyText1.color))),
          Expanded(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                FlatButton(
                  height: 100,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  onPressed: () {
                    ExtendedNavigator.of(context).push(
                      Routes.createHomePage,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.doorOpen,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Create Your Home',
                          style: TextStyle(
                              fontSize: 25,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FlatButton(
                  height: 100,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Colors.orange,
                  onPressed: () {
                    ExtendedNavigator.of(context).push(
                      Routes.joinHomeByIdPage,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.userFriends,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Join Existing Home',
                          style: TextStyle(
                              fontSize: 25,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  color: Colors.black87,
                  child: const Center(
                    child: Text(
                      'Homes you have add',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                MultiBlocProvider(
                  providers: [
                    BlocProvider<UserHomesListBloc>(
                      create: (context) => getIt<UserHomesListBloc>()
                        ..add(const UserHomesListEvent.watchAllStarted()),
                    ),
                  ],
                  child: MultiBlocListener(
                    listeners: [
                      BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) {
                          state.maybeMap(
                            unauthenticated: (_) =>
                                ExtendedNavigator.of(context)
                                    .replace(Routes.signInPage),
                            orElse: () {},
                          );
                        },
                      ),
                    ],
                    child: Expanded(
                      child: Container(
                          color: Colors.black54, child: UserHomesListWidget()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
