import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IVendorsRepository {
  Future<Either<VendorFailure, KtList<Vendor>>> getVendors();
}
