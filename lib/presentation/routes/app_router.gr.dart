// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/folder_of_scenes/folder_of_scene.dart';
import '../../infrastructure/core/gen/smart_device/smart_blinds_object.dart';
import '../../infrastructure/core/gen/smart_device/smart_room_object.dart';
import '../add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart';
import '../add_new_devices_process/connect_to_home_wifi/connect_to_home_wifi_page.dart';
import '../add_new_devices_process/open_hotspot/open_hotspot_page.dart';
import '../add_user_to_home/add_user_to_home_page.dart';
import '../create_home/create_home_page.dart';
import '../home_page/home_page.dart';
import '../home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import '../home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import '../introduction_screen/introduction_screen_page.dart';
import '../join_home_by_id/join_home_by_id_page.dart';
import '../lights/lights_in_the_room/lights_in_the_room_page.dart';
import '../lights/rooms_lights_page.dart';
import '../manage_users/manage_users_page.dart';
import '../scenes/scenes_page.dart';
import '../sign_in_page/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../where_to_login_page/where_to_login_page_minimal/where_to_login_page_minimal_page.dart';
import '../where_to_login_page/where_to_login_page_offline.dart';

class Routes {
  static const String splashPage = '/';
  static const String introductionScreenPage = '/introduction-screen-page';
  static const String signInPage = '/sign-in-page';
  static const String createHomePage = '/create-home-page';
  static const String whereToLoginPageMinimalPage =
      '/where-to-login-page-minimal-page';
  static const String whereToLoginPageOffline = '/where-to-login-page-offline';
  static const String joinHomeByIdPage = '/join-home-by-id-page';
  static const String homePage = '/home-page';
  static const String manageUsersPage = '/manage-users-page';
  static const String addUserToHomePage = '/add-user-to-home-page';
  static const String scenesPage = '/scenes-page';
  static const String chooseDeviceVendorToAddPage =
      '/choose-device-vendor-to-add-page';
  static const String openHotspotPage = '/open-hotspot-page';
  static const String connectToHomeWifiPage = '/connect-to-home-wifi-page';
  static const String roomsLightsPage = '/rooms-lights-page';
  static const String lightsInTheRoomPage = '/lights-in-the-room-page';
  static const String blindsPage = '/blinds-page';
  static const String smartBlindPage = '/smart-blind-page';
  static const all = <String>{
    splashPage,
    introductionScreenPage,
    signInPage,
    createHomePage,
    whereToLoginPageMinimalPage,
    whereToLoginPageOffline,
    joinHomeByIdPage,
    homePage,
    manageUsersPage,
    addUserToHomePage,
    scenesPage,
    chooseDeviceVendorToAddPage,
    openHotspotPage,
    connectToHomeWifiPage,
    roomsLightsPage,
    lightsInTheRoomPage,
    blindsPage,
    smartBlindPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.introductionScreenPage, page: IntroductionScreenPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.createHomePage, page: CreateHomePage),
    RouteDef(Routes.whereToLoginPageMinimalPage,
        page: WhereToLoginPageMinimalPage),
    RouteDef(Routes.whereToLoginPageOffline, page: WhereToLoginPageOffline),
    RouteDef(Routes.joinHomeByIdPage, page: JoinHomeByIdPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.manageUsersPage, page: ManageUsersPage),
    RouteDef(Routes.addUserToHomePage, page: AddUserToHomePage),
    RouteDef(Routes.scenesPage, page: ScenesPage),
    RouteDef(Routes.chooseDeviceVendorToAddPage,
        page: ChooseDeviceVendorToAddPage),
    RouteDef(Routes.openHotspotPage, page: OpenHotspotPage),
    RouteDef(Routes.connectToHomeWifiPage, page: ConnectToHomeWifiPage),
    RouteDef(Routes.roomsLightsPage, page: RoomsLightsPage),
    RouteDef(Routes.lightsInTheRoomPage, page: LightsInTheRoomPage),
    RouteDef(Routes.blindsPage, page: BlindsPage),
    RouteDef(Routes.smartBlindPage, page: SmartBlindPage),
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
    IntroductionScreenPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroductionScreenPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    CreateHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateHomePage(),
        settings: data,
      );
    },
    WhereToLoginPageMinimalPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WhereToLoginPageMinimalPage(),
        settings: data,
      );
    },
    WhereToLoginPageOffline: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WhereToLoginPageOffline(),
        settings: data,
      );
    },
    JoinHomeByIdPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => JoinHomeByIdPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    ManageUsersPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ManageUsersPage(),
        settings: data,
      );
    },
    AddUserToHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddUserToHomePage(),
        settings: data,
      );
    },
    ScenesPage: (data) {
      final args = data.getArgs<ScenesPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ScenesPage(args.folderOfScenes),
        settings: data,
      );
    },
    ChooseDeviceVendorToAddPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChooseDeviceVendorToAddPage(),
        settings: data,
      );
    },
    OpenHotspotPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OpenHotspotPage(),
        settings: data,
      );
    },
    ConnectToHomeWifiPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConnectToHomeWifiPage(),
        settings: data,
      );
    },
    RoomsLightsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RoomsLightsPage(),
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
    SmartBlindPage: (data) {
      final args = data.getArgs<SmartBlindPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            SmartBlindPage(smartBlindsObject: args.smartBlindsObject),
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

  Future<dynamic> pushIntroductionScreenPage() =>
      push<dynamic>(Routes.introductionScreenPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushCreateHomePage() => push<dynamic>(Routes.createHomePage);

  Future<dynamic> pushWhereToLoginPageMinimalPage() =>
      push<dynamic>(Routes.whereToLoginPageMinimalPage);

  Future<dynamic> pushWhereToLoginPageOffline() =>
      push<dynamic>(Routes.whereToLoginPageOffline);

  Future<dynamic> pushJoinHomeByIdPage() =>
      push<dynamic>(Routes.joinHomeByIdPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushManageUsersPage() =>
      push<dynamic>(Routes.manageUsersPage);

  Future<dynamic> pushAddUserToHomePage() =>
      push<dynamic>(Routes.addUserToHomePage);

  Future<dynamic> pushScenesPage({
    @required FolderOfScenes folderOfScenes,
  }) =>
      push<dynamic>(
        Routes.scenesPage,
        arguments: ScenesPageArguments(folderOfScenes: folderOfScenes),
      );

  Future<dynamic> pushChooseDeviceVendorToAddPage() =>
      push<dynamic>(Routes.chooseDeviceVendorToAddPage);

  Future<dynamic> pushOpenHotspotPage() =>
      push<dynamic>(Routes.openHotspotPage);

  Future<dynamic> pushConnectToHomeWifiPage() =>
      push<dynamic>(Routes.connectToHomeWifiPage);

  Future<dynamic> pushRoomsLightsPage() =>
      push<dynamic>(Routes.roomsLightsPage);

  Future<dynamic> pushLightsInTheRoomPage({
    @required SmartRoomObject thisSmartRoom,
  }) =>
      push<dynamic>(
        Routes.lightsInTheRoomPage,
        arguments: LightsInTheRoomPageArguments(thisSmartRoom: thisSmartRoom),
      );

  Future<dynamic> pushBlindsPage() => push<dynamic>(Routes.blindsPage);

  Future<dynamic> pushSmartBlindPage({
    @required SmartBlindsObject smartBlindsObject,
  }) =>
      push<dynamic>(
        Routes.smartBlindPage,
        arguments:
            SmartBlindPageArguments(smartBlindsObject: smartBlindsObject),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ScenesPage arguments holder class
class ScenesPageArguments {
  final FolderOfScenes folderOfScenes;
  ScenesPageArguments({@required this.folderOfScenes});
}

/// LightsInTheRoomPage arguments holder class
class LightsInTheRoomPageArguments {
  final SmartRoomObject thisSmartRoom;
  LightsInTheRoomPageArguments({@required this.thisSmartRoom});
}

/// SmartBlindPage arguments holder class
class SmartBlindPageArguments {
  final SmartBlindsObject smartBlindsObject;
  SmartBlindPageArguments({@required this.smartBlindsObject});
}
