import 'package:auto_route/auto_route_annotations.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
import 'package:cybear_jinni/presentation/sign_in_page/login_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage, initial: true),
    MaterialRoute(page: WhereToLoginPage, fullscreenDialog: true),
    MaterialRoute(page: HomePage),
  ],
)
class $AppRouter {
  SignInPage signInPage;
  WhereToLoginPage whereToLoginPage;
  HomePage homePage;
}
