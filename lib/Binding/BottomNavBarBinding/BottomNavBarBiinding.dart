

import 'package:get/get.dart';

import '../../Controller/BottomNavbarController/BottomNavbarController.dart';


class BottomNavBarScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
            () => BottomNavController());
  }

}