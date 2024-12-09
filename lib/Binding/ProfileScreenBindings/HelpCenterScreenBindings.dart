import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
// import 'package:untitled/Controllers/ProfileScreenController/HelpCenterScreenController.dart';

import '../../Controller/ProfileScreenController/HelpCenterScreenController.dart';





class HelpCenterScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HelpCenterScreenController>(
            () => HelpCenterScreenController());
  }

}