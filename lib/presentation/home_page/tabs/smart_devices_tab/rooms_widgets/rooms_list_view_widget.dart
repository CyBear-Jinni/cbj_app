import 'dart:io';

import 'package:cybear_jinni/ad_state.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/rooms_widgets/rom_widget.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class RoomsListViewWidget extends StatefulWidget {
  /// Builds the rooms
  const RoomsListViewWidget({
    required this.tempDevicesByRooms,
    required this.devicesList,
    required this.roomsList,
  });

  final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms;
  final List<DeviceEntityAbstract?> devicesList;
  final List<RoomEntity?> roomsList;

  @override
  State<RoomsListViewWidget> createState() => _RoomsListViewWidgetState();
}

class _RoomsListViewWidgetState extends State<RoomsListViewWidget> {
  List<BannerAd> banners = [];

  List<Object> itemList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Size screenSize = MediaQuery.of(context).size;

    // Adds package only support Android and IOS
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      final adState = Provider.of<AdState>(context);
      adState.initialization.then((status) {
        setState(() {
          for (int adForRooms = 0;
              adForRooms < widget.roomsList.length;
              adForRooms += 3) {
            banners.add(
              BannerAd(
                adUnitId: adState.bannerAdUnitId,
                size: AdSize(width: screenSize.width.toInt(), height: 60),
                request: const AdRequest(),
                listener: adState.adListener,
              )..load(),
            );
          }
        });
      });
    }
  }

  /// RoomId than TypeName than list of devices of this type in
  /// this room
  Map<String, Map<String, List<DeviceEntityAbstract>>>
      mapOfRoomsIdWithListOfDevices({
    required Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms,
  }) {
    final Map<String, Map<String, List<DeviceEntityAbstract>>>
        tempDevicesByRoomsByType =
        <String, Map<String, List<DeviceEntityAbstract>>>{};

    tempDevicesByRooms.forEach((k, v) {
      tempDevicesByRoomsByType[k!] = {};
      for (final element in v) {
        if (tempDevicesByRoomsByType[k]![element.entityTypes.getOrCrash()] ==
            null) {
          tempDevicesByRoomsByType[k]![element.entityTypes.getOrCrash()] = [
            element
          ];
        } else {
          tempDevicesByRoomsByType[k]![element.entityTypes.getOrCrash()]!
              .add(element);
        }
      }
    });
    return tempDevicesByRoomsByType;
  }

  bool isDeviceShouldBeSownInSummaryRoom(DeviceEntityAbstract deviceEntity) {
    final String onAction = DeviceActions.on.toString();

    if (deviceEntity is GenericBlindsDE) {
      // TODO: Need to check position open and not moving up
      return deviceEntity.blindsSwitchState?.getOrCrash() ==
          DeviceActions.moveUp.toString();
    } else if (deviceEntity is GenericBoilerDE) {
      return deviceEntity.boilerSwitchState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericLightDE) {
      return deviceEntity.lightSwitchState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericRgbwLightDE) {
      return deviceEntity.lightSwitchState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericSmartTvDE) {
      return deviceEntity.smartTvSwitchState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericSwitchDE) {
      return deviceEntity.switchState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericSmartPlugDE) {
      return deviceEntity.smartPlugState?.getOrCrash() == onAction;
    } else if (deviceEntity is GenericSmartComputerDE) {
      return false;
    } else if (deviceEntity is GenericPrinterDE) {
      // TODO: show whenever low on ink
      return false;
    }
    logger.w(
      'State check is missing for device type ${deviceEntity.entityTypes} '
      'to appear in summary',
    );
    return false;
  }

  Map<String?, List<DeviceEntityAbstract>> listOfDevicesInDiscoveredRoom({
    required List<RoomEntity?> rooms,
    required List<DeviceEntityAbstract?> devicesList,
  }) {
    final List<DeviceEntityAbstract?> devicesListTemp = List.from(devicesList);

    final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms =
        <String, List<DeviceEntityAbstract>>{};

    /// Adding discovered room first so it will be the last in
    /// the list
    for (final RoomEntity? room in rooms) {
      if (room != null &&
          room.uniqueId.getOrCrash() ==
              RoomUniqueId.discoveredRoomId().getOrCrash()) {
        final String roomId = room.uniqueId.getOrCrash();
        tempDevicesByRooms[roomId] = [];

        /// Loops on the devices in the room
        for (final String deviceId in room.roomDevicesId.getOrCrash()) {
          /// Check if app already received the device, it could also
          /// be on the way
          for (final DeviceEntityAbstract? device in devicesListTemp) {
            if (device != null && device.uniqueId.getOrCrash() == deviceId) {
              tempDevicesByRooms[roomId]!.add(device);

              devicesListTemp.remove(device);
              break;
            }
          }
        }

        if (tempDevicesByRooms[roomId]!.isEmpty) {
          tempDevicesByRooms.remove(roomId);
        }
        break;
      }
    }
    return tempDevicesByRooms;
  }

  Map<String?, List<DeviceEntityAbstract>> listOfDevicesInRooms({
    required List<RoomEntity?> rooms,
    required List<DeviceEntityAbstract?> devicesList,
  }) {
    final List<DeviceEntityAbstract?> devicesListTemp = List.from(devicesList);

    final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms =
        <String, List<DeviceEntityAbstract>>{};

    /// Loops on the rooms
    for (final RoomEntity? room in rooms) {
      if (room != null &&
          room.uniqueId.getOrCrash() !=
              RoomUniqueId.discoveredRoomId().getOrCrash()) {
        final String roomId = room.uniqueId.getOrCrash();
        tempDevicesByRooms[roomId] = [];

        /// Loops on the devices in the room
        for (final String deviceId in room.roomDevicesId.getOrCrash()) {
          /// Check if app already received the device, it could also
          /// be on the way
          for (final DeviceEntityAbstract? device in devicesListTemp) {
            if (device != null && device.uniqueId.getOrCrash() == deviceId) {
              tempDevicesByRooms[roomId]!.add(device);

              devicesListTemp.remove(device);
              break;
            }
          }
        }
        if (tempDevicesByRooms[roomId]!.isEmpty) {
          tempDevicesByRooms.remove(roomId);
        }
      }
    }

    return tempDevicesByRooms;
  }

  Map<String?, List<DeviceEntityAbstract>> listOfDevicesInSummaryArea({
    required List<RoomEntity?> rooms,
    required List<DeviceEntityAbstract?> devicesList,
  }) {
    final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms =
        <String, List<DeviceEntityAbstract>>{};
    // /// All Devices area
    // final RoomEntity allDevicesRoom = RoomEntity.empty().copyWith(
    //   cbjEntityName: RoomDefaultName('All_Devices'.tr()),
    // );
    // final String allDevicesRoomId = allDevicesRoom.uniqueId.getOrCrash();
    // tempDevicesByRooms[allDevicesRoomId] = [];
    //
    // for (final DeviceEntityAbstract? device in devicesList) {
    //   if (device != null) {
    //     allDevicesRoom.addDeviceId(device.uniqueId.getOrCrash());
    //     tempDevicesByRooms[allDevicesRoomId]!.add(device);
    //   }
    // }
    // rooms.add(allDevicesRoom);

    /// Summary area
    final RoomEntity summaryDevicesRoom = RoomEntity.empty().copyWith(
      cbjEntityName: RoomDefaultName('Summary'.tr()),
    );

    final String summaryRoomId = summaryDevicesRoom.uniqueId.getOrCrash();
    tempDevicesByRooms[summaryRoomId] = [];

    for (final DeviceEntityAbstract? device in devicesList) {
      if (device != null && isDeviceShouldBeSownInSummaryRoom(device)) {
        summaryDevicesRoom.addDeviceId(device.uniqueId.getOrCrash());
        tempDevicesByRooms[summaryRoomId]!.add(device);
      }
    }
    rooms.add(summaryDevicesRoom);

    return tempDevicesByRooms;
  }

  @override
  Widget build(BuildContext context) {
    final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms =
        Map<String?, List<DeviceEntityAbstract>>.from(
      widget.tempDevicesByRooms,
    );

    final List<DeviceEntityAbstract?> devicesList =
        List.from(widget.devicesList);
    final List<RoomEntity?> roomsList = List.from(widget.roomsList);

    tempDevicesByRooms.addAll(
      listOfDevicesInDiscoveredRoom(
        rooms: roomsList,
        devicesList: devicesList,
      ),
    );

    tempDevicesByRooms.addAll(
      listOfDevicesInRooms(
        rooms: roomsList,
        devicesList: devicesList,
      ),
    );

    if (roomsList.length > 2) {
      tempDevicesByRooms.addAll(
        listOfDevicesInSummaryArea(
          rooms: roomsList,
          devicesList: devicesList,
        ),
      );
    }

    final Map<String, Map<String, List<DeviceEntityAbstract>>>
        tempDevicesByRoomsByType =
        <String, Map<String, List<DeviceEntityAbstract>>>{};

    tempDevicesByRoomsByType.addAll(
      mapOfRoomsIdWithListOfDevices(
        tempDevicesByRooms: tempDevicesByRooms,
      ),
    );

    List<Object> objectList = [];

    tempDevicesByRoomsByType.forEach((key, value) {
      final MapEntry<String, Map<String, List<DeviceEntityAbstract>>>
          tempEntry =
          MapEntry<String, Map<String, List<DeviceEntityAbstract>>>(key, value);
      objectList.add(tempEntry);
    });

    if (objectList.length >= 3) {
      objectList = List<Object>.from(objectList.reversed);

      int adTempCounter = 0;
      for (int enterAd = 3; enterAd < objectList.length - 1; enterAd += 2) {
        if (adTempCounter < banners.length) {
          objectList.insert(enterAd + adTempCounter, banners[adTempCounter]);
          adTempCounter++;
        }
      }

      objectList = List<Object>.from(objectList.reversed);
    }

    int gradientColorCounter = 1;

    List<Color> roomColorGradiant = gradientColorsList[gradientColorCounter];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final Object adOrRoom = objectList[index];

        double bottomMargin = 15;
        double leftMargin = 0;
        double rightMargin = 0;
        double borderRadius = 5;

        if (adOrRoom is BannerAd) {
          return Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: bottomMargin),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            child: AdWidget(
              ad: adOrRoom,
            ),
          );
        }
        if (adOrRoom
            is MapEntry<String, Map<String, List<DeviceEntityAbstract>>>) {
          gradientColorCounter++;
          // Don't make the last room pain blue as this will look the same with
          // Summary room blue
          if (objectList.length >= 3 &&
              adOrRoom == objectList[objectList.length - 2] &&
              gradientColorCounter ==
                  gradientColorsList.indexOf(GradientColors.sea)) {
            gradientColorCounter++;
          }

          if (gradientColorCounter >= gradientColorsList.length) {
            gradientColorCounter = 1;
          }

          roomColorGradiant = gradientColorsList[gradientColorCounter];

          /// Color for Discovered room
          // TODO: After adding 4 more colors to
          // gradientColorsList uncomment this section
          // if (index == 0) {
          //   roomColorGradiant = gradientColorsList[2];
          // }

          /// Color for Summary page
          if (index == objectList.length - 1) {
            leftMargin = 10;
            rightMargin = 10;
            bottomMargin = 15;
            borderRadius = 40;

            roomColorGradiant = gradientColorsList[0];
            if (gradientColorCounter < 1) {
              gradientColorCounter--;
            } else {
              gradientColorCounter = gradientColorsList.length;
            }
            bottomMargin = 0;
          }

          final String roomId = adOrRoom.key;

          final RoomEntity roomEntity = roomsList.firstWhere(
            (element) => element!.uniqueId.getOrCrash() == roomId,
          )!;

          int numberOfDevicesInTheRoom = 0;

          adOrRoom.value.forEach((key, value) {
            for (final DeviceEntityAbstract element in value) {
              numberOfDevicesInTheRoom++;
            }
          });

          return RoomWidget(
            roomColorGradiant: roomColorGradiant,
            roomsList: roomsList,
            tempDevicesByRoomsByType: tempDevicesByRoomsByType,
            borderRadius: borderRadius,
            bottomMargin: bottomMargin,
            leftMargin: leftMargin,
            rightMargin: rightMargin,
            roomEntity: roomEntity,
            roomId: roomId,
            numberOfDevicesInTheRoom: numberOfDevicesInTheRoom,
          );
        }
        return const Text('Error');
      },
      itemCount: objectList.length,
    );
  }
}
