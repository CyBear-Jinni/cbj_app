import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_printer_device/generic_printer_validators.dart';
import 'package:dartz/dartz.dart';

class GenericPrinterSwitchState extends ValueObjectCore<String> {
  factory GenericPrinterSwitchState(String? input) {
    assert(input != null);
    return GenericPrinterSwitchState._(
      validateGenericPrinterStateNotEmpty(input!),
    );
  }

  const GenericPrinterSwitchState._(this.value);

  @override
  final Either<CoreFailure<String>, String> value;

  static List<String> printerValidActions() {
    return printerAllValidActions();
  }
}
