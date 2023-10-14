import 'package:cbj_integrations_controller/domain/vendors/vendor_value_objects.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor.freezed.dart';

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    required VendorName name,
    IconData? icon,
    String? image,
  }) = _Vendor;

  const Vendor._();
}
