import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/configure_new_cbj_comp/configure_new_cbj_comp_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/connect_to_home_wifi/connect_to_home_wifi_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/open_access_point/open_access_pointi_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/scan_for_new_cbj_comps/scan_for_new_cbj_comps_page.dart';
import 'package:cybear_jinni/presentation/add_user_to_home/add_user_to_home_page.dart';
import 'package:cybear_jinni/presentation/add_vendors_pages/add_lifx_vendor/add_lifx_vendor_page.dart';
import 'package:cybear_jinni/presentation/connect_to_hub/connect_to_hub_page.dart';
import 'package:cybear_jinni/presentation/create_home/create_home_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/blinds/rooms_blinds_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/boilers/rooms_boilers_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/lights_in_the_room/lights_in_the_room_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/rooms_lights_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/rgbw_lights/rgbw_lights_in_the_room/rgbw_lights_in_the_room_page.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/rgbw_lights/rooms_rgbw_lights_page.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
import 'package:cybear_jinni/presentation/introduction_screen/introduction_screen_page.dart';
import 'package:cybear_jinni/presentation/join_home_by_id/join_home_by_id_page.dart';
import 'package:cybear_jinni/presentation/manage_users/manage_users_page.dart';
import 'package:cybear_jinni/presentation/plus_button/plus_button.dart';
import 'package:cybear_jinni/presentation/scenes/scenes_page.dart';
import 'package:cybear_jinni/presentation/sign_in_page/sign_in_page.dart';
import 'package:cybear_jinni/presentation/splash/splash_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_minimal/where_to_login_page_minimal_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_offline.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: IntroductionScreenPage),
    AutoRoute(page: ConnectToHubPage),
    AutoRoute(page: SignInPage),
    AutoRoute(page: CreateHomePage),
    AutoRoute(page: WhereToLoginPageMinimalPage),
    AutoRoute(page: WhereToLoginPageOffline),
    AutoRoute(page: JoinHomeByIdPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: PlusButtonPage),
    AutoRoute(page: ManageUsersPage),
    AutoRoute(page: AddUserToHomePage),
    AutoRoute(page: ScenesPage),
    AutoRoute(page: ChooseDeviceVendorToAddPage),
    AutoRoute(page: AddLifxVendorPage),
    AutoRoute(page: ConnectToHomeWifiPage),
    AutoRoute(page: OpenAccessPointPage),
    AutoRoute(page: ScanForNewCBJCompsPage),
    AutoRoute(page: ConfigureNewCbjCompPage),
    AutoRoute(page: RoomsLightsPage),
    AutoRoute(page: LightsInTheRoomPage),
    AutoRoute(page: RoomsRgbwLightsPage),
    AutoRoute(page: RgbwLightsInTheRoomPage),
    AutoRoute(page: RoomsBlindsPage),
    AutoRoute(page: RoomsBoilersPage),
  ],
)
class $AppRouter {
  late SplashPage splashPage;
  late IntroductionScreenPage introductionScreenPage;
  late ConnectToHubPage connectToHubPage;
  late SignInPage signInPage;
  late CreateHomePage createHomePage;
  late ScenesPage scenesPage;
  late ChooseDeviceVendorToAddPage chooseDeviceVendorToAddPage;
  late AddLifxVendorPage addLifxVendorPage;
  late ConnectToHomeWifiPage connectToHomeWifiPage;
  late OpenAccessPointPage openAccessPointPage;
  late ScanForNewCBJCompsPage scanForNewCBJCompsPage;
  late ConfigureNewCbjCompPage configureNewCbjCompPage;
  late WhereToLoginPageMinimalPage whereToLoginPageMinimal;
  late WhereToLoginPageOffline whereToLoginPageOffline;
  late JoinHomeByIdPage joinHomeByIdPage;
  late HomePage homePage;
  late PlusButtonPage plusButtonPage;
  late ManageUsersPage manageUsersPage;
  late AddUserToHomePage addUserToHomePage;
  late RoomsLightsPage roomsLightsPage;
  late LightsInTheRoomPage lightsInTheRoomPage;
  late RoomsRgbwLightsPage roomsRgbwLightsPage;
  late RgbwLightsInTheRoomPage rgbwLightsInTheRoomPage;
  late RoomsBlindsPage roomsBlindsPage;
  late RoomsBoilersPage roomsBoilersPage;
}
