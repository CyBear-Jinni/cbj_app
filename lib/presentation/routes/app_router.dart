import 'package:auto_route/auto_route_annotations.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/lights_in_the_room/lights_in_the_room_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/lights_page.dart';
import 'package:cybear_jinni/presentation/sign_in_page/login_page.dart';
import 'package:cybear_jinni/presentation/splash/splash_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: WhereToLoginPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: LightsPage),
    MaterialRoute(page: LightsInTheRoomPage),
    MaterialRoute(page: BlindsPage),
    MaterialRoute(page: SmartBlindPage),
  ],
)
class $AppRouter {
  SplashPage splashPage;
  SignInPage signInPage;
  WhereToLoginPage whereToLoginPage;
  HomePage homePage;
  LightsPage lightsPage;
  LightsInTheRoomPage lightsInTheRoomPage;
  BlindsPage blindsPage;
  SmartBlindPage smartBlindPage;
}
