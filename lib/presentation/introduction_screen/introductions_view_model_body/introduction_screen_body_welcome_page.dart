import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class IntroductionScreenBodyWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              Text(
                'We',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
              const SizedBox(width: 10.0),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'are OPEN SOURCE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'are FAIR',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'are INNOVATIVE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'are PRIVATE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'are SECURE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'are EASY TO USE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'support LOCAL CONNECTION',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'want a BETTER FUTURE',
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ((Theme.of(context).textTheme.bodyLarge!.color)!)
                .withOpacity(0.3),
            border: Border.all(
              color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ),
            // Make rounded corners
            borderRadius: BorderRadius.circular(30),
          ),
          height: 160,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55.0,
                  child: Image.network(
                    'https://i.ibb.co/tHWm1NV/Cy-Bear-Jinni-smart-device-logo.png',
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55.0,
                  child: Image.network(
                    'https://user-images.githubusercontent.com/9304740/97423649-3ab85300-1918-11eb-8c2e-50ce0445c457.png',
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55.0,
                  child: Image.network(
                    'https://user-images.githubusercontent.com/62209650/95081236-8e6cbd80-0719-11eb-99b9-8efc34e711b0.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
