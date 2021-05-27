import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/introduction_screen/introductions_view_model_body/introduction_screen_body_about_page.dart';
import 'package:cybear_jinni/presentation/introduction_screen/introductions_view_model_body/introduction_screen_body_welcome_page.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
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
                  child: Center(
                    child: Image.asset(
                      'assets/cbj_logo.png',
                      height: 200.0,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Text(
                      'CyBear Jinni',
                      style: TextStyle(
                        fontSize: 48,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.pink.withOpacity(0.13),
                      ),
                    ),
                    Text(
                      'CyBear Jinni',
                      style: TextStyle(
                        fontSize: 48,
                        color:
                            ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bodyWidget: IntroductionScreenBodyWelcomePage(),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                fontSize: 25,
              ),
              pageColor: Colors.transparent,
              bodyTextStyle: TextStyle(
                color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
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
                Text(
                  'Our Vision',
                  style: TextStyle(
                      color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                      fontSize: 30),
                ),
              ],
            ),
            bodyWidget: IntroductionScreenBodyAboutPage(),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                fontSize: 30,
              ),
              pageColor: Colors.transparent,
              bodyTextStyle: TextStyle(
                color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          )
        ],
        done: Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
          ),
        ),
        onDone: () {
          ExtendedNavigator.of(context).replace(Routes.signInPage);
        },
      ),
    );
  }
}
