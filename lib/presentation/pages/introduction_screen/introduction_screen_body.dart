import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/introduction_screen/introductions_view_model_body/introduction_screen_body_about_page.dart';
import 'package:cybear_jinni/presentation/pages/introduction_screen/introductions_view_model_body/introduction_screen_body_welcome_page.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.06, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.grey,
            Colors.deepPurple,
          ],
        ),
      ),
      child: IntroductionScreen(
        showNextButton: false,
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).textTheme.bodyLarge!.color,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        globalBackgroundColor: Colors.transparent,
        pages: [
          PageViewModel(
            titleWidget: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 5),
                  child: const Center(
                    child: ImageAtom(
                      'assets/cbj_logo.png',
                      height: 200.0,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    TextAtom(
                      'CyBear Jinni',
                      style: TextStyle(
                        fontSize: 48,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.pink.withOpacity(0.13),
                      ),
                    ),
                    TextAtom(
                      'CyBear Jinni',
                      style: TextStyle(
                        fontSize: 48,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bodyWidget: IntroductionScreenBodyWelcomePage(),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontSize: 25,
              ),
              pageColor: Colors.transparent,
              bodyTextStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                TextAtom(
                  'Our Vision',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            bodyWidget: IntroductionScreenBodyAboutPage(),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontSize: 30,
              ),
              pageColor: Colors.transparent,
              bodyTextStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
        done: TextAtom(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
        ),
        onDone: () {
          context.router.replace(const ConnectToHubRoute());
        },
      ),
    );
  }
}
