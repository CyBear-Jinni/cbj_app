import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // _navigate();
    openUpdateDialog();
  }

  Future openUpdateDialog() async {
    await Future.delayed(const Duration(seconds: 1));
    if (context.mounted) {
      await showDialog<void>(
        context: context,
        builder: (BuildContext context) => UpdateDialog(),
      );
    }
  }

  // Future _navigate() async {
  //   (await ILocalDbRepository.instance.getHubEntityNetworkName()).fold(
  //     (l) {
  //       if (kIsWeb || Platform.isLinux || Platform.isWindows) {
  //         return context.router.replace(const ConnectToHubRoute());
  //       }
  //       return context.router.replace(const IntroductionRouteRoute());
  //     },
  //     (r) => context.router.replace(const HomeRoute()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ImageAtom(
          'assets/cbj_logo.png',
        ),
      ),
    );
  }
}

class UpdateDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;
    final ColorScheme colorScheme = themeData.colorScheme;

    return Center(
      child: AlertDialog(
        title: TextAtom('A New App', style: textTheme.titleLarge),
        content: SizedBox(
          height: 170,
          child: Column(
            children: [
              TextAtom(
                'We have moved to a new app.\n'
                'Please download the new app and delete this one.\n'
                'See you in the other side :D',
                style: textTheme.titleMedium,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              ElevatedButton(
                child: TextAtom(
                  'Download',
                  style: textTheme.titleMedium,
                ),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://play.google.com/store/apps/details?id=com.cybearjinni.app',
                    ),
                    mode: LaunchMode.externalApplication,
                  );
                },
              ),
            ],
          ),
        ),
        actions: [],
      ),
    );
  }
}
