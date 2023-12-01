import 'package:cbj_integrations_controller/domain/vendors/i_vendor_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/presentation/pages/add_new_devices_process/choose_device_vendor_to_add/widgets/vendor_widget.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class VendorsList extends StatefulWidget {
  @override
  State<VendorsList> createState() => _VendorsListState();
}

class _VendorsListState extends State<VendorsList> {
  KtList<VendorData> vendorsList = <VendorData>[].toImmutableList();

  @override
  void initState() {
    super.initState();
    initializeVendors();
  }

  Future<void> initializeVendors() async {
    final KtList<VendorData> temp =
        (await IVendorsRepository.instance.getVendors()).fold(
      (f) => <VendorData>[].toImmutableList(),
      (vendorsListSuccess) => vendorsListSuccess,
    );
    setState(() {
      vendorsList = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
      reverse: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final vendor = vendorsList[index];
        return VendorWidget(
          vendor,
        );
      },
      itemCount: vendorsList.size,
    );
  }
}
