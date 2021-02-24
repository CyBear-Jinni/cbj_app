import 'package:auto_route/auto_route_annotations.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/connect_to_home_wifi/connect_to_home_wifi_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/open_access_point/open_access_pointi_page.dart';
import 'package:cybear_jinni/presentation/add_user_to_home/add_user_to_home_page.dart';
import 'package:cybear_jinni/presentation/create_home/create_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import 'package:cybear_jinni/presentation/introduction_screen/introduction_screen_page.dart';
import 'package:cybear_jinni/presentation/join_home_by_id/join_home_by_id_page.dart';
import 'package:cybear_jinni/presentation/lights/lights_in_the_room/lights_in_the_room_page.dart';
import 'package:cybear_jinni/presentation/lights/rooms_lights_page.dart';
import 'package:cybear_jinni/presentation/manage_users/manage_users_page.dart';
import 'package:cybear_jinni/presentation/scenes/scenes_page.dart';
import 'package:cybear_jinni/presentation/sign_in_page/sign_in_page.dart';
import 'package:cybear_jinni/presentation/splash/splash_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_minimal/where_to_login_page_minimal_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_offline.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: IntroductionScreenPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: CreateHomePage),
    MaterialRoute(page: WhereToLoginPageMinimalPage),
    MaterialRoute(page: WhereToLoginPageOffline),
    MaterialRoute(page: JoinHomeByIdPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: ManageUsersPage),
    MaterialRoute(page: AddUserToHomePage),
    MaterialRoute(page: ScenesPage),
    MaterialRoute(page: ChooseDeviceVendorToAddPage),
    MaterialRoute(page: ConnectToHomeWifiPage),
    MaterialRoute(page: OpenAccessPointPage),
    MaterialRoute(page: RoomsLightsPage),
    MaterialRoute(page: LightsInTheRoomPage),
    MaterialRoute(page: BlindsPage),
    MaterialRoute(page: SmartBlindPage),
  ],
)
class $AppRouter {
  SplashPage splashPage;
  IntroductionScreenPage introductionScreenPage;
  SignInPage signInPage;
  CreateHomePage createHomePage;
  ScenesPage scenesPage;
  ChooseDeviceVendorToAddPage chooseDeviceVendorToAddPage;
  ConnectToHomeWifiPage connectToHomeWifiPage;
  OpenAccessPointPage openAccessPointPage;
  WhereToLoginPageMinimalPage whereToLoginPageMinimal;
  WhereToLoginPageOffline whereToLoginPageOffline;
  JoinHomeByIdPage joinHomeByIdPage;
  HomePage homePage;
  ManageUsersPage manageUsersPage;
  AddUserToHomePage addUserToHomePage;
  RoomsLightsPage roomsLightsPage;
  LightsInTheRoomPage lightsInTheRoomPage;
  BlindsPage blindsPage;
  SmartBlindPage smartBlindPage;
}
