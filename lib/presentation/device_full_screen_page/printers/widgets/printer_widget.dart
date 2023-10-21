import 'package:cybear_jinni/application/printers/printers_actor/printers_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class PrinterWidget extends StatelessWidget {
  const PrinterWidget(this._deviceEntity);

  final GenericPrinterDE? _deviceEntity;

  void openPrintersWebPage(BuildContext context) {
    context.read<PrintersActorBloc>().add(
          PrintersActorEvent.openPrintersWebPage(
            _deviceEntity!,
            context,
          ),
        );
  }

  void shutdownComputer(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<PrintersActorBloc>().add(
          PrintersActorEvent.shutdownAllPrinters(
            [deviceId],
            context,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrintersActorBloc, PrintersActorState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    openPrintersWebPage(context);
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.link,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      "Open Printer's Web Page",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
