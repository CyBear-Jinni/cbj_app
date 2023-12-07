import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class PrinterWidget extends StatefulWidget {
  const PrinterWidget(this._deviceEntity);

  final GenericPrinterDE _deviceEntity;

  @override
  State<PrinterWidget> createState() => _PrinterWidgetState();
}

class _PrinterWidgetState extends State<PrinterWidget> {
  Future<void> _openPrintersWebPage() async {
    FlushbarHelper.createLoading(
      message: 'Opening printers Web Page',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    final String printerIp =
        widget._deviceEntity.deviceLastKnownIp.getOrCrash();
    launchUrl(
      Uri.parse('http://$printerIp'),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: () {
                _openPrintersWebPage();
              },
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.link,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  "Open Printer's Web Page",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
