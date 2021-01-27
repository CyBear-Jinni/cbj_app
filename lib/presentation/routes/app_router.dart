import 'package:auto_route/auto_route_annotations.dart';
import 'package:cybear_jinni/presentation/sign_in_page/login_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage, initial: true),
  ],
)
class $AppRouter {
  SignInPage signInPage;
}
