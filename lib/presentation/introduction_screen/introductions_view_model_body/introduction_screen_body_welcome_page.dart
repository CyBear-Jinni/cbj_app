import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
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
                  color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                ),
              ),
              const SizedBox(width: 10.0),
              RotateAnimatedTextKit(
                text: const [
                  'are OPEN SOURCE',
                  'are FAIR',
                  'are INNOVATIVE',
                  'are PRIVATE',
                  'are SECURE',
                  'are EASY TO USE',
                  'support LOCAL CONNECTION',
                  'want a BETTER FUTURE',
                ],
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: ((Theme.of(context).textTheme.bodyText1!.color)!)!
                  .withOpacity(0.3),
              border: Border.all(
                color: ((Theme.of(context).textTheme.bodyText1!.color)!)!,
              ),
              // Make rounded corners
              borderRadius: BorderRadius.circular(30)),
          height: 160,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55.0,
                  child: Image.network(
                    'https://user-images.githubusercontent.com/9304740/97103272-19572d00-16b4-11eb-8e47-394ec18b3809.png',
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
