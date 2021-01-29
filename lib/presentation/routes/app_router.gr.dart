// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/objects/smart_device/smart_room_object.dart';
import '../home_page/home_page.dart';
import '../home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import '../home_page/tabs/smart_devices_tab/lights/lights_in_the_room/lights_in_the_room_page.dart';
import '../home_page/tabs/smart_devices_tab/lights/lights_page.dart';
import '../sign_in_page/login_page.dart';
import '../splash/splash_page.dart';
import '../where_to_login_page/where_to_login_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String whereToLoginPage = '/where-to-login-page';
  static const String homePage = '/home-page';
  static const String lightsPage = '/lights-page';
  static const String lightsInTheRoomPage = '/lights-in-the-room-page';
  static const String blindsPage = '/blinds-page';
  static const all = <String>{
    splashPage,
    signInPage,
    whereToLoginPage,
    homePage,
    lightsPage,
    lightsInTheRoomPage,
    blindsPage,
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
    RouteDef(Routes.lightsPage, page: LightsPage),
    RouteDef(Routes.lightsInTheRoomPage, page: LightsInTheRoomPage),
    RouteDef(Routes.blindsPage, page: BlindsPage),
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
    LightsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LightsPage(),
        settings: data,
      );
    },
    LightsInTheRoomPage: (data) {
      final args = data.getArgs<LightsInTheRoomPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            LightsInTheRoomPage(thisSmartRoom: args.thisSmartRoom),
        settings: data,
      );
    },
    BlindsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BlindsPage(),
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

  Future<dynamic> pushLightsPage() => push<dynamic>(Routes.lightsPage);

  Future<dynamic> pushLightsInTheRoomPage({
    @required SmartRoomObject thisSmartRoom,
  }) =>
      push<dynamic>(
        Routes.lightsInTheRoomPage,
        arguments: LightsInTheRoomPageArguments(thisSmartRoom: thisSmartRoom),
      );

  Future<dynamic> pushBlindsPage() => push<dynamic>(Routes.blindsPage);
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

/// LightsInTheRoomPage arguments holder class
class LightsInTheRoomPageArguments {
  final SmartRoomObject thisSmartRoom;
  LightsInTheRoomPageArguments({@required this.thisSmartRoom});
}
