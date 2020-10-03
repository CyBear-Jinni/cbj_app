import 'package:CyBearJinni/features/home_page/tabs/lamps_tab/room_toggles_block.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:flutter/material.dart';

///  This class show all the rooms in the house and quick access to the light switch from the rom_widget page
class RoomsManagerWidget extends StatelessWidget {
  Widget _buildItemList(BuildContext context, int index) {
    return RoomTogglesBlock(rooms[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: _buildItemList,
        itemCount: rooms.length,
      ),
    );
//    return DevicesList(rooms[0]);
  }
}
