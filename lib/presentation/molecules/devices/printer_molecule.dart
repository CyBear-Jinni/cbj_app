import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_printer_entity/generic_printer_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class PrinterMolecule extends StatefulWidget {
  const PrinterMolecule(this.entity);

  final GenericPrinterDE entity;

  @override
  State<PrinterMolecule> createState() => _PrinterMoleculeState();
}

class _PrinterMoleculeState extends State<PrinterMolecule> {
  Future<void> _openPrintersWebPage() async {
    FlushbarHelper.createLoading(
      message: 'Opening printers Web Page',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    final String printerIp = widget.entity.deviceLastKnownIp.getOrCrash()!;
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
