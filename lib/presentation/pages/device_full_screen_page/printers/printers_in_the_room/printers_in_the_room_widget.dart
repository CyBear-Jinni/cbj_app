import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// The widgets to show all the printers in selected room
class PrintersInTheRoomWidget extends StatelessWidget {
  const PrintersInTheRoomWidget(
    this.products,
    this.updateProduct,
    this.deleteProduct,
  );

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
            logger.t('Swiped start to end');
          } else {
            logger.t('Other swiping');
          }
        },
        background: Container(color: Colors.red),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                child: Icon(MdiIcons.lightSwitch),
//                backgroundImage: AssetImage('assets/cbj_logo.png'),
//              backgroundImage: AssetImage(products[index]['image']),
              ),
              title: TextField(
//                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: products[index]['title'.tr()].toString(),
                  hintStyle: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
              subtitle: TextAtom(
                products[index]['number'.tr()].toString(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
              trailing: IconButton(
                color: Theme.of(context).textTheme.bodyLarge!.color,
                icon: const FaIcon(FontAwesomeIcons.pen),
                onPressed: () {},
              ),
            ),
            const Divider(),
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
