// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/cbj_comp/cbj_comp_entity.dart' as _i24;
import '../../domain/folder_of_scenes/folder_of_scene.dart' as _i23;
import '../../infrastructure/core/gen/smart_device/smart_room_object.dart'
    as _i25;
import '../add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart'
    as _i14;
import '../add_new_devices_process/configure_new_cbj_comp/configure_new_cbj_comp_page.dart'
    as _i18;
import '../add_new_devices_process/connect_to_home_wifi/connect_to_home_wifi_page.dart'
    as _i15;
import '../add_new_devices_process/open_access_point/open_access_pointi_page.dart'
    as _i16;
import '../add_new_devices_process/scan_for_new_cbj_comps/scan_for_new_cbj_comps_page.dart'
    as _i17;
import '../add_user_to_home/add_user_to_home_page.dart' as _i12;
import '../blinds/rooms_blinds_page.dart' as _i21;
import '../boilers/rooms_boilers_page.dart' as _i22;
import '../create_home/create_home_page.dart' as _i6;
import '../home_page/home_page.dart' as _i10;
import '../introduction_screen/introduction_screen_page.dart' as _i4;
import '../join_home_by_id/join_home_by_id_page.dart' as _i9;
import '../lights/lights_in_the_room/lights_in_the_room_page.dart' as _i20;
import '../lights/rooms_lights_page.dart' as _i19;
import '../manage_users/manage_users_page.dart' as _i11;
import '../scenes/scenes_page.dart' as _i13;
import '../sign_in_page/sign_in_page.dart' as _i5;
import '../splash/splash_page.dart' as _i3;
import '../where_to_login_page/where_to_login_page_minimal/where_to_login_page_minimal_page.dart'
    as _i7;
import '../where_to_login_page/where_to_login_page_offline.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    IntroductionScreenPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.IntroductionScreenPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignInPage();
        }),
    CreateHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.CreateHomePage();
        }),
    WhereToLoginPageMinimalPageRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i7.WhereToLoginPageMinimalPage();
            }),
    WhereToLoginPageOfflineRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i8.WhereToLoginPageOffline();
            }),
    JoinHomeByIdPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.JoinHomeByIdPage();
        }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.HomePage();
        }),
    ManageUsersPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ManageUsersPage();
        }),
    AddUserToHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.AddUserToHomePage();
        }),
    ScenesPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ScenesPageRouteArgs>();
          return _i13.ScenesPage(args.folderOfScenes);
        }),
    ChooseDeviceVendorToAddPageRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i14.ChooseDeviceVendorToAddPage();
            }),
    ConnectToHomeWifiPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.ConnectToHomeWifiPage();
        }),
    OpenAccessPointPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.OpenAccessPointPage();
        }),
    ScanForNewCBJCompsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i17.ScanForNewCBJCompsPage();
        }),
    ConfigureNewCbjCompPageRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<ConfigureNewCbjCompPageRouteArgs>();
              return _i18.ConfigureNewCbjCompPage(
                  cbjCompEntity: args.cbjCompEntity);
            }),
    RoomsLightsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsLightsPageRouteArgs>(
              orElse: () => const RoomsLightsPageRouteArgs());
          return _i19.RoomsLightsPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        }),
    LightsInTheRoomPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LightsInTheRoomPageRouteArgs>();
          return _i20.LightsInTheRoomPage(thisSmartRoom: args.thisSmartRoom);
        }),
    RoomsBlindsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsBlindsPageRouteArgs>(
              orElse: () => const RoomsBlindsPageRouteArgs());
          return _i21.RoomsBlindsPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        }),
    RoomsBoilersPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsBoilersPageRouteArgs>(
              orElse: () => const RoomsBoilersPageRouteArgs());
          return _i22.RoomsBoilersPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(IntroductionScreenPageRoute.name,
            path: '/introduction-screen-page'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(CreateHomePageRoute.name, path: '/create-home-page'),
        _i1.RouteConfig(WhereToLoginPageMinimalPageRoute.name,
            path: '/where-to-login-page-minimal-page'),
        _i1.RouteConfig(WhereToLoginPageOfflineRoute.name,
            path: '/where-to-login-page-offline'),
        _i1.RouteConfig(JoinHomeByIdPageRoute.name,
            path: '/join-home-by-id-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(ManageUsersPageRoute.name, path: '/manage-users-page'),
        _i1.RouteConfig(AddUserToHomePageRoute.name,
            path: '/add-user-to-home-page'),
        _i1.RouteConfig(ScenesPageRoute.name, path: '/scenes-page'),
        _i1.RouteConfig(ChooseDeviceVendorToAddPageRoute.name,
            path: '/choose-device-vendor-to-add-page'),
        _i1.RouteConfig(ConnectToHomeWifiPageRoute.name,
            path: '/connect-to-home-wifi-page'),
        _i1.RouteConfig(OpenAccessPointPageRoute.name,
            path: '/open-access-point-page'),
        _i1.RouteConfig(ScanForNewCBJCompsPageRoute.name,
            path: '/scan-for-new-cb-jcomps-page'),
        _i1.RouteConfig(ConfigureNewCbjCompPageRoute.name,
            path: '/configure-new-cbj-comp-page'),
        _i1.RouteConfig(RoomsLightsPageRoute.name, path: '/rooms-lights-page'),
        _i1.RouteConfig(LightsInTheRoomPageRoute.name,
            path: '/lights-in-the-room-page'),
        _i1.RouteConfig(RoomsBlindsPageRoute.name, path: '/rooms-blinds-page'),
        _i1.RouteConfig(RoomsBoilersPageRoute.name, path: '/rooms-boilers-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class IntroductionScreenPageRoute extends _i1.PageRouteInfo {
  const IntroductionScreenPageRoute()
      : super(name, path: '/introduction-screen-page');

  static const String name = 'IntroductionScreenPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class CreateHomePageRoute extends _i1.PageRouteInfo {
  const CreateHomePageRoute() : super(name, path: '/create-home-page');

  static const String name = 'CreateHomePageRoute';
}

class WhereToLoginPageMinimalPageRoute extends _i1.PageRouteInfo {
  const WhereToLoginPageMinimalPageRoute()
      : super(name, path: '/where-to-login-page-minimal-page');

  static const String name = 'WhereToLoginPageMinimalPageRoute';
}

class WhereToLoginPageOfflineRoute extends _i1.PageRouteInfo {
  const WhereToLoginPageOfflineRoute()
      : super(name, path: '/where-to-login-page-offline');

  static const String name = 'WhereToLoginPageOfflineRoute';
}

class JoinHomeByIdPageRoute extends _i1.PageRouteInfo {
  const JoinHomeByIdPageRoute() : super(name, path: '/join-home-by-id-page');

  static const String name = 'JoinHomeByIdPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class ManageUsersPageRoute extends _i1.PageRouteInfo {
  const ManageUsersPageRoute() : super(name, path: '/manage-users-page');

  static const String name = 'ManageUsersPageRoute';
}

class AddUserToHomePageRoute extends _i1.PageRouteInfo {
  const AddUserToHomePageRoute() : super(name, path: '/add-user-to-home-page');

  static const String name = 'AddUserToHomePageRoute';
}

class ScenesPageRoute extends _i1.PageRouteInfo<ScenesPageRouteArgs> {
  ScenesPageRoute({required _i23.FolderOfScenes folderOfScenes})
      : super(name,
            path: '/scenes-page',
            args: ScenesPageRouteArgs(folderOfScenes: folderOfScenes));

  static const String name = 'ScenesPageRoute';
}

class ScenesPageRouteArgs {
  const ScenesPageRouteArgs({required this.folderOfScenes});

  final _i23.FolderOfScenes folderOfScenes;
}

class ChooseDeviceVendorToAddPageRoute extends _i1.PageRouteInfo {
  const ChooseDeviceVendorToAddPageRoute()
      : super(name, path: '/choose-device-vendor-to-add-page');

  static const String name = 'ChooseDeviceVendorToAddPageRoute';
}

class ConnectToHomeWifiPageRoute extends _i1.PageRouteInfo {
  const ConnectToHomeWifiPageRoute()
      : super(name, path: '/connect-to-home-wifi-page');

  static const String name = 'ConnectToHomeWifiPageRoute';
}

class OpenAccessPointPageRoute extends _i1.PageRouteInfo {
  const OpenAccessPointPageRoute()
      : super(name, path: '/open-access-point-page');

  static const String name = 'OpenAccessPointPageRoute';
}

class ScanForNewCBJCompsPageRoute extends _i1.PageRouteInfo {
  const ScanForNewCBJCompsPageRoute()
      : super(name, path: '/scan-for-new-cb-jcomps-page');

  static const String name = 'ScanForNewCBJCompsPageRoute';
}

class ConfigureNewCbjCompPageRoute
    extends _i1.PageRouteInfo<ConfigureNewCbjCompPageRouteArgs> {
  ConfigureNewCbjCompPageRoute({required _i24.CBJCompEntity cbjCompEntity})
      : super(name,
            path: '/configure-new-cbj-comp-page',
            args:
                ConfigureNewCbjCompPageRouteArgs(cbjCompEntity: cbjCompEntity));

  static const String name = 'ConfigureNewCbjCompPageRoute';
}

class ConfigureNewCbjCompPageRouteArgs {
  const ConfigureNewCbjCompPageRouteArgs({required this.cbjCompEntity});

  final _i24.CBJCompEntity cbjCompEntity;
}

class RoomsLightsPageRoute extends _i1.PageRouteInfo<RoomsLightsPageRouteArgs> {
  RoomsLightsPageRoute(
      {String? showDevicesOnlyFromRoomId, List<_i2.Color>? roomColorGradiant})
      : super(name,
            path: '/rooms-lights-page',
            args: RoomsLightsPageRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsLightsPageRoute';
}

class RoomsLightsPageRouteArgs {
  const RoomsLightsPageRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String? showDevicesOnlyFromRoomId;

  final List<_i2.Color>? roomColorGradiant;
}

class LightsInTheRoomPageRoute
    extends _i1.PageRouteInfo<LightsInTheRoomPageRouteArgs> {
  LightsInTheRoomPageRoute({required _i25.SmartRoomObject? thisSmartRoom})
      : super(name,
            path: '/lights-in-the-room-page',
            args: LightsInTheRoomPageRouteArgs(thisSmartRoom: thisSmartRoom));

  static const String name = 'LightsInTheRoomPageRoute';
}

class LightsInTheRoomPageRouteArgs {
  const LightsInTheRoomPageRouteArgs({required this.thisSmartRoom});

  final _i25.SmartRoomObject? thisSmartRoom;
}

class RoomsBlindsPageRoute extends _i1.PageRouteInfo<RoomsBlindsPageRouteArgs> {
  RoomsBlindsPageRoute(
      {String? showDevicesOnlyFromRoomId, List<_i2.Color>? roomColorGradiant})
      : super(name,
            path: '/rooms-blinds-page',
            args: RoomsBlindsPageRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsBlindsPageRoute';
}

class RoomsBlindsPageRouteArgs {
  const RoomsBlindsPageRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String? showDevicesOnlyFromRoomId;

  final List<_i2.Color>? roomColorGradiant;
}

class RoomsBoilersPageRoute
    extends _i1.PageRouteInfo<RoomsBoilersPageRouteArgs> {
  RoomsBoilersPageRoute(
      {String showDevicesOnlyFromRoomId, List<_i2.Color> roomColorGradiant})
      : super(name,
            path: '/rooms-boilers-page',
            args: RoomsBoilersPageRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsBoilersPageRoute';
}

class RoomsBoilersPageRouteArgs {
  const RoomsBoilersPageRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String showDevicesOnlyFromRoomId;

  final List<_i2.Color> roomColorGradiant;
}
