

import 'package:get/get.dart';

import '../../Controller/HomeScreenController/HomeScreenController.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(
            () => HomeScreenController());
  }

}