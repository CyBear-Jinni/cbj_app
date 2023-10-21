import 'package:cybear_jinni/application/vendors/vendors_bloc.dart';
import 'package:cybear_jinni/presentation/pages/add_new_devices_process/choose_device_vendor_to_add/widgets/vendor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VendorsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorsBloc, VendorsState>(
      builder: (context, state) {
        return state.map(
          (value) => const Text('sd'),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (state) {
            return ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(
                height: 16,
              ),
              reverse: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final vendor = state.vendorsList[index];
                return VendorWidget(
                  vendor,
                );
              },
              itemCount: state.vendorsList.size,
            );
          },
          error: (_) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
