// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page.dart';
import '../sign_in_page/login_page.dart';
import '../splash/splash_page.dart';
import '../where_to_login_page/where_to_login_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String whereToLoginPage = '/where-to-login-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    splashPage,
    signInPage,
    whereToLoginPage,
    homePage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.whereToLoginPage, page: WhereToLoginPage),
    RouteDef(Routes.homePage, page: HomePage),
  ];

  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    WhereToLoginPage: (data) {
      final args = data.getArgs<WhereToLoginPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => WhereToLoginPage(
          userEmail: args.userEmail,
          userPassword: args.userPassword,
        ),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushWhereToLoginPage({
    @required String userEmail,
    @required String userPassword,
  }) =>
      push<dynamic>(
        Routes.whereToLoginPage,
        arguments: WhereToLoginPageArguments(
            userEmail: userEmail, userPassword: userPassword),
      );

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// WhereToLoginPage arguments holder class
class WhereToLoginPageArguments {
  final String userEmail;
  final String userPassword;

  WhereToLoginPageArguments(
      {@required this.userEmail, @required this.userPassword});
}
