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
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    IntroductionScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.IntroductionScreenPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignInPage();
        }),
    CreateHomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.CreateHomePage();
        }),
    WhereToLoginRouteMinimalRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i7.WhereToLoginPageMinimalPage();
            }),
    WhereToLoginRouteOffline.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.WhereToLoginPageOffline();
        }),
    JoinHomeByIdRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.JoinHomeByIdPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.HomePage();
        }),
    ManageUsersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ManageUsersPage();
        }),
    AddUserToHomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.AddUserToHomePage();
        }),
    ScenesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ScenesRouteArgs>();
          return _i13.ScenesPage(args.folderOfScenes);
        }),
    ChooseDeviceVendorToAddRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i14.ChooseDeviceVendorToAddPage();
            }),
    ConnectToHomeWifiRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.ConnectToHomeWifiPage();
        }),
    OpenAccessPointRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.OpenAccessPointPage();
        }),
    ScanForNewCBJCompsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i17.ScanForNewCBJCompsPage();
        }),
    ConfigureNewCbjCompRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConfigureNewCbjCompRouteArgs>();
          return _i18.ConfigureNewCbjCompPage(
              cbjCompEntity: args.cbjCompEntity);
        }),
    RoomsLightsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsLightsRouteArgs>(
              orElse: () => const RoomsLightsRouteArgs());
          return _i19.RoomsLightsPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        }),
    LightsInTheRoomRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LightsInTheRoomRouteArgs>();
          return _i20.LightsInTheRoomPage(thisSmartRoom: args.thisSmartRoom);
        }),
    RoomsBlindsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsBlindsRouteArgs>(
              orElse: () => const RoomsBlindsRouteArgs());
          return _i21.RoomsBlindsPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        }),
    RoomsBoilersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomsBoilersRouteArgs>(
              orElse: () => const RoomsBoilersRouteArgs());
          return _i22.RoomsBoilersPage(
              showDevicesOnlyFromRoomId: args.showDevicesOnlyFromRoomId,
              roomColorGradiant: args.roomColorGradiant);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(IntroductionScreenRoute.name,
            path: '/introduction-screen-page'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(CreateHomeRoute.name, path: '/create-home-page'),
        _i1.RouteConfig(WhereToLoginRouteMinimalRoute.name,
            path: '/where-to-login-page-minimal-page'),
        _i1.RouteConfig(WhereToLoginRouteOffline.name,
            path: '/where-to-login-page-offline'),
        _i1.RouteConfig(JoinHomeByIdRoute.name, path: '/join-home-by-id-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(ManageUsersRoute.name, path: '/manage-users-page'),
        _i1.RouteConfig(AddUserToHomeRoute.name,
            path: '/add-user-to-home-page'),
        _i1.RouteConfig(ScenesRoute.name, path: '/scenes-page'),
        _i1.RouteConfig(ChooseDeviceVendorToAddRoute.name,
            path: '/choose-device-vendor-to-add-page'),
        _i1.RouteConfig(ConnectToHomeWifiRoute.name,
            path: '/connect-to-home-wifi-page'),
        _i1.RouteConfig(OpenAccessPointRoute.name,
            path: '/open-access-point-page'),
        _i1.RouteConfig(ScanForNewCBJCompsRoute.name,
            path: '/scan-for-new-cb-jcomps-page'),
        _i1.RouteConfig(ConfigureNewCbjCompRoute.name,
            path: '/configure-new-cbj-comp-page'),
        _i1.RouteConfig(RoomsLightsRoute.name, path: '/rooms-lights-page'),
        _i1.RouteConfig(LightsInTheRoomRoute.name,
            path: '/lights-in-the-room-page'),
        _i1.RouteConfig(RoomsBlindsRoute.name, path: '/rooms-blinds-page'),
        _i1.RouteConfig(RoomsBoilersRoute.name, path: '/rooms-boilers-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class IntroductionScreenRoute extends _i1.PageRouteInfo {
  const IntroductionScreenRoute()
      : super(name, path: '/introduction-screen-page');

  static const String name = 'IntroductionScreenRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class CreateHomeRoute extends _i1.PageRouteInfo {
  const CreateHomeRoute() : super(name, path: '/create-home-page');

  static const String name = 'CreateHomeRoute';
}

class WhereToLoginRouteMinimalRoute extends _i1.PageRouteInfo {
  const WhereToLoginRouteMinimalRoute()
      : super(name, path: '/where-to-login-page-minimal-page');

  static const String name = 'WhereToLoginRouteMinimalRoute';
}

class WhereToLoginRouteOffline extends _i1.PageRouteInfo {
  const WhereToLoginRouteOffline()
      : super(name, path: '/where-to-login-page-offline');

  static const String name = 'WhereToLoginRouteOffline';
}

class JoinHomeByIdRoute extends _i1.PageRouteInfo {
  const JoinHomeByIdRoute() : super(name, path: '/join-home-by-id-page');

  static const String name = 'JoinHomeByIdRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class ManageUsersRoute extends _i1.PageRouteInfo {
  const ManageUsersRoute() : super(name, path: '/manage-users-page');

  static const String name = 'ManageUsersRoute';
}

class AddUserToHomeRoute extends _i1.PageRouteInfo {
  const AddUserToHomeRoute() : super(name, path: '/add-user-to-home-page');

  static const String name = 'AddUserToHomeRoute';
}

class ScenesRoute extends _i1.PageRouteInfo<ScenesRouteArgs> {
  ScenesRoute({required _i23.FolderOfScenes folderOfScenes})
      : super(name,
            path: '/scenes-page',
            args: ScenesRouteArgs(folderOfScenes: folderOfScenes));

  static const String name = 'ScenesRoute';
}

class ScenesRouteArgs {
  const ScenesRouteArgs({required this.folderOfScenes});

  final _i23.FolderOfScenes folderOfScenes;
}

class ChooseDeviceVendorToAddRoute extends _i1.PageRouteInfo {
  const ChooseDeviceVendorToAddRoute()
      : super(name, path: '/choose-device-vendor-to-add-page');

  static const String name = 'ChooseDeviceVendorToAddRoute';
}

class ConnectToHomeWifiRoute extends _i1.PageRouteInfo {
  const ConnectToHomeWifiRoute()
      : super(name, path: '/connect-to-home-wifi-page');

  static const String name = 'ConnectToHomeWifiRoute';
}

class OpenAccessPointRoute extends _i1.PageRouteInfo {
  const OpenAccessPointRoute() : super(name, path: '/open-access-point-page');

  static const String name = 'OpenAccessPointRoute';
}

class ScanForNewCBJCompsRoute extends _i1.PageRouteInfo {
  const ScanForNewCBJCompsRoute()
      : super(name, path: '/scan-for-new-cb-jcomps-page');

  static const String name = 'ScanForNewCBJCompsRoute';
}

class ConfigureNewCbjCompRoute
    extends _i1.PageRouteInfo<ConfigureNewCbjCompRouteArgs> {
  ConfigureNewCbjCompRoute({required _i24.CBJCompEntity cbjCompEntity})
      : super(name,
            path: '/configure-new-cbj-comp-page',
            args: ConfigureNewCbjCompRouteArgs(cbjCompEntity: cbjCompEntity));

  static const String name = 'ConfigureNewCbjCompRoute';
}

class ConfigureNewCbjCompRouteArgs {
  const ConfigureNewCbjCompRouteArgs({required this.cbjCompEntity});

  final _i24.CBJCompEntity cbjCompEntity;
}

class RoomsLightsRoute extends _i1.PageRouteInfo<RoomsLightsRouteArgs> {
  RoomsLightsRoute(
      {String? showDevicesOnlyFromRoomId, List<_i2.Color>? roomColorGradiant})
      : super(name,
            path: '/rooms-lights-page',
            args: RoomsLightsRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsLightsRoute';
}

class RoomsLightsRouteArgs {
  const RoomsLightsRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String? showDevicesOnlyFromRoomId;

  final List<_i2.Color>? roomColorGradiant;
}

class LightsInTheRoomRoute extends _i1.PageRouteInfo<LightsInTheRoomRouteArgs> {
  LightsInTheRoomRoute({required _i25.SmartRoomObject? thisSmartRoom})
      : super(name,
            path: '/lights-in-the-room-page',
            args: LightsInTheRoomRouteArgs(thisSmartRoom: thisSmartRoom));

  static const String name = 'LightsInTheRoomRoute';
}

class LightsInTheRoomRouteArgs {
  const LightsInTheRoomRouteArgs({required this.thisSmartRoom});

  final _i25.SmartRoomObject? thisSmartRoom;
}

class RoomsBlindsRoute extends _i1.PageRouteInfo<RoomsBlindsRouteArgs> {
  RoomsBlindsRoute(
      {String? showDevicesOnlyFromRoomId, List<_i2.Color>? roomColorGradiant})
      : super(name,
            path: '/rooms-blinds-page',
            args: RoomsBlindsRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsBlindsRoute';
}

class RoomsBlindsRouteArgs {
  const RoomsBlindsRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String? showDevicesOnlyFromRoomId;

  final List<_i2.Color>? roomColorGradiant;
}

class RoomsBoilersRoute extends _i1.PageRouteInfo<RoomsBoilersRouteArgs> {
  RoomsBoilersRoute(
      {String? showDevicesOnlyFromRoomId, List<_i2.Color>? roomColorGradiant})
      : super(name,
            path: '/rooms-boilers-page',
            args: RoomsBoilersRouteArgs(
                showDevicesOnlyFromRoomId: showDevicesOnlyFromRoomId,
                roomColorGradiant: roomColorGradiant));

  static const String name = 'RoomsBoilersRoute';
}

class RoomsBoilersRouteArgs {
  const RoomsBoilersRouteArgs(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  final String? showDevicesOnlyFromRoomId;

  final List<_i2.Color>? roomColorGradiant;
}
