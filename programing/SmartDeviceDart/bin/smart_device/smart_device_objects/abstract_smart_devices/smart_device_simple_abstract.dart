import '../../../shered/enums.dart';
import 'smart_device_base_abstract.dart';

// Abstract class for smart devices with on time property
abstract class SmartDeviceSimple extends SmartDeviceBaseAbstract {
  double howMuchTimeTheDeviceDoingAction;  // How much time the smart device was active (Doing action) continuously

  SmartDeviceSimple(String macAddress, String deviceName) : super(macAddress, deviceName);


  @override
  String ExecuteWish(String wishString) {
    WishEnum wish = ConvertWishStringToWishesObject(wishString);
    if(wish == null) return "Your wish does not exist on simple class";
    return WishInSimpleClass(wish);
  }

  // All the wishes that are legit to execute from the simple class
  String WishInSimpleClass(WishEnum wish){
    return WishInBaseClass(wish);
  }
}