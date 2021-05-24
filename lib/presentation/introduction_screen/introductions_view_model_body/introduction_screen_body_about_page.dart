import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroductionScreenBodyAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color:
                  Theme.of(context).textTheme.subtitle2.color.withOpacity(0.55),
              border: Border.all(
                color: Theme.of(context).textTheme.subtitle2.color,
              ),
              // Make rounded corners
              borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const SingleChildScrollView(
              child: Text(
                'You are now starting a journey into the world of CyBear '
                'Jinni.\n\nWe are trying to build an ecosystem of smart'
                ' home that is built upon openness and trust.\n\n'
                'Our products are open source to show you that we '
                'protect your privacy by default.\n\n'
                'The functionality of the devices will support local '
                'WiFi execution whenever possible, this way you will'
                ' be able to control your smart home even if you are'
                ' disconnected from the world (as long as you are '
                'connected to your home WiFi).\n',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
