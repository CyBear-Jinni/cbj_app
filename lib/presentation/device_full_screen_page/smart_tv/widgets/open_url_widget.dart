import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenUrlPopUp {
  OpenUrlPopUp(this.contextFromParent, this._deviceEntity) {
    openUrlPopUp();
  }

  BuildContext contextFromParent;
  GenericSmartTvDE? _deviceEntity;

  openUrlPopUp() {
    String url = '';

    showDialog(
      context: contextFromParent,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.only(
            top: 10.0,
          ),
          title: const Text(
            "Open URL",
            style: TextStyle(fontSize: 24.0),
          ),
          content: SizedBox(
            height: 400,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (textInUrl) {
                        url = textInUrl;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter URL here',
                        labelText: 'URL',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        playVideo(contextFromParent, url);

                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        // fixedSize: Size(250, 50),
                      ),
                      child: const Text(
                        "Submit",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void playVideo(BuildContext context, String url) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.openUrl(
            context,
            [deviceId],
            url,
          ),
        );
  }
}
