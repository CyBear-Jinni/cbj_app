import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/lights/room_lights_toggles_block.dart';
import 'package:cybear_jinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:flutter/material.dart';

///  This class show all the rooms in the house and quick access to the light switch from the rom_widget page
class RoomsManagerWidget extends StatelessWidget {
  Widget _buildItemList(BuildContext context, int index) {
    return RoomLightsTogglesBlock(
      rooms[index],
      maxLightsToShow: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
        itemBuilder: _buildItemList,
        itemCount: rooms.length,
      ),
    );
//    return DevicesList(rooms[0]);
  }
}
