import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/user_homes_list/user_homes_list_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/pages/where_to_login_page/where_to_login_page_minimal/widgets/user_homes_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The user will choose where to login to, join into an existing home or
/// create his new home
@RoutePage()
class WhereToLoginPageMinimalPage extends StatelessWidget {
  const WhereToLoginPageMinimalPage();

  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[200]!.withOpacity(0.6),
        title: const TextAtom('Choose type of login'),
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
            child: TextAtom(
              'What would you like to do',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      context.router.push(const CreateHomeRoute());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.doorOpen,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextAtom(
                            'Create Your Home',
                            style: TextStyle(
                              fontSize: 25,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.orange,
                      ),
                    ),
                    onPressed: () {
                      context.router.push(const JoinHomeByIdRoute());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.userGroup,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextAtom(
                            'Join Existing Home',
                            style: TextStyle(
                              fontSize: 25,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  color: Colors.black87,
                  child: const Center(
                    child: TextAtom(
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
                            unauthenticated: (_) => context.router
                                .replace(const ConnectToHubRoute()),
                            orElse: () {},
                          );
                        },
                      ),
                    ],
                    child: Expanded(
                      child: ColoredBox(
                        color: Colors.black54,
                        child: UserHomesListWidget(),
                      ),
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
