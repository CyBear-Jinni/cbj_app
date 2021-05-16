import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesByRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Home Name',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'Room Name',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const Text('2 Devices'),
            GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(child: Text('')),
                        const Expanded(
                          child: CircleAvatar(
                            child: FaIcon(
                              FontAwesomeIcons.solidLightbulb,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 55,
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 28,
                              decoration: BoxDecoration(
                                // Red border with the width is equal to 5
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                '17',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rom Name lights',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Off',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                        Text('·'),
                        Text(
                          'On',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'Room Name',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const Text('5 Devices'),
            GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(child: Text('')),
                        const Expanded(
                          child: CircleAvatar(
                            child: FaIcon(
                              FontAwesomeIcons.solidLightbulb,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 55,
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 28,
                              decoration: BoxDecoration(
                                // Red border with the width is equal to 5
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                '17',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rom Name lights',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Off',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                        Text('·'),
                        Text(
                          'On',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
