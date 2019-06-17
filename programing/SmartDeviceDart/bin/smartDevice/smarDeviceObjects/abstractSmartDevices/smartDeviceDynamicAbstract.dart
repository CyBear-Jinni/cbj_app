import '../../../shered/enums.dart';
import '../../../shered/wishClasses/dynamicWish.dart';
import 'smartDeviceSimpleAbstract.dart';



// Abstract class for smart devices class with dynamic property
abstract class SmartDeviceDynamic extends SmartDeviceSimple{

  double dynamicValue; // Save how much power to do for action

  SmartDeviceDynamic(String macAddress, String deviceName) : super(macAddress, deviceName);

  @override
  String ExecuteWish(String wishString) {
    WishEnum wish = ConvertWishStringToWishesObject(wishString);
    if(wish == null) return "Your wish does not exist on ";
    return _wishInDynamicClass(wish);



  }

  // Set dynamic value
  String _SetDynamicValue(){
    if(deviceInformation == null) {
      return "Device information is missing, cant set dynamic value";
    }
    return DynamicWish.SetDynamic(deviceInformation);

  }


  // Change dynamic value with open connection
  String _OpenDynamicValue(){
  if(deviceInformation == null) {
  return "Device information is missing, cant create open connection with dynamic ";
  }
  DynamicWish.OpenDynamic(deviceInformation);
  onOff = false;
  return 'Turn on sucsessfuly';
  }



  // All the wishes that are legit to execute from the dynamic class
  String _wishInDynamicClass(WishEnum wish){
    switch (wish){
      case WishEnum.SDynamic:
        return _SetDynamicValue();
      case WishEnum.ODynamic:
        return _OpenDynamicValue();
      default:
        return WishInSimpleClass(wish);
    }
  }

}