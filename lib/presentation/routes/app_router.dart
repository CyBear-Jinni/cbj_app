import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/configure_new_cbj_comp/configure_new_cbj_comp_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/connect_to_home_wifi/connect_to_home_wifi_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/open_access_point/open_access_pointi_page.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/scan_for_new_cbj_comps/scan_for_new_cbj_comps_page.dart';
import 'package:cybear_jinni/presentation/add_user_to_home/add_user_to_home_page.dart';
import 'package:cybear_jinni/presentation/blinds/rooms_blinds_page.dart';
import 'package:cybear_jinni/presentation/boilers/rooms_boilers_page.dart';
import 'package:cybear_jinni/presentation/create_home/create_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
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
    MaterialRoute(page: ScanForNewCBJCompsPage),
    MaterialRoute(page: ConfigureNewCbjCompPage),
    MaterialRoute(page: RoomsLightsPage),
    MaterialRoute(page: LightsInTheRoomPage),
    MaterialRoute(page: RoomsBlindsPage),
    MaterialRoute(page: RoomsBoilersPage),
  ],
)
class $AppRouter {
  late SplashPage splashPage;
  late IntroductionScreenPage introductionScreenPage;
  late SignInPage signInPage;
  late CreateHomePage createHomePage;
  late ScenesPage scenesPage;
  late ChooseDeviceVendorToAddPage chooseDeviceVendorToAddPage;
  late ConnectToHomeWifiPage connectToHomeWifiPage;
  late OpenAccessPointPage openAccessPointPage;
  late ScanForNewCBJCompsPage scanForNewCBJCompsPage;
  late ConfigureNewCbjCompPage configureNewCbjCompPage;
  late WhereToLoginPageMinimalPage whereToLoginPageMinimal;
  late WhereToLoginPageOffline whereToLoginPageOffline;
  late JoinHomeByIdPage joinHomeByIdPage;
  late HomePage homePage;
  late ManageUsersPage manageUsersPage;
  late AddUserToHomePage addUserToHomePage;
  late RoomsLightsPage roomsLightsPage;
  late LightsInTheRoomPage lightsInTheRoomPage;
  late RoomsBlindsPage roomsBlindsPage;
  late RoomsBoilersPage roomsBoilersPage;
}
