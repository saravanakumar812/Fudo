import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';


import '../../Controller/ProfileScreenController/ProfileAddressScreen.dart';



class ProfileAddressScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProfileAddressScreenController>(
            () => ProfileAddressScreenController());
  }

}