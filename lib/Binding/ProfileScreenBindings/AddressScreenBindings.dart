import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../../Controller/ProfileScreenController/AddressScreenController.dart';





class AddressScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddressScreenController>(
            () => AddressScreenController());
  }

}