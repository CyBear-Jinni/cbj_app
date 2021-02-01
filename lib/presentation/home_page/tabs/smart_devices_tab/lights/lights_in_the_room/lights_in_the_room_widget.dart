import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The widget to show all the lights in selected room
class LightsInTheRoomWidget extends StatelessWidget {
  const LightsInTheRoomWidget(
      this.products, this.updateProduct, this.deleteProduct);

  final Function updateProduct;
  final Function deleteProduct;
  final List<Map<String, dynamic>> products;

  @override
  Widget build(BuildContext context) {
    Widget listTileSmartDevice(int index) {
      return Dismissible(
        key: Key(index.toString()),
        onDismissed: (DismissDirection direction) {
          if (direction == DismissDirection.endToStart) {
            deleteProduct(0);
          } else if (direction == DismissDirection.startToEnd) {
            print('Swiped start to end');
          } else {
            print('Other swiping');
          }
        },
        background: Container(color: Colors.red),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const CircleAvatar(
                child: FaIcon(FontAwesomeIcons.solidLightbulb),
//                backgroundImage: AssetImage('assets/logo.png'),
//              backgroundImage: AssetImage(products[index]['image']),
              ),
              title: TextField(
//                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: products[index]['title'.tr()].toString(),
                  hintStyle: const TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                products[index]['number'.tr()].toString(),
                style: const TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.pen),
                onPressed: () {},
              ),
            ),
            const Divider()
          ],
        ),
      );
    }

    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              listTileSmartDevice(index),
            ],
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
