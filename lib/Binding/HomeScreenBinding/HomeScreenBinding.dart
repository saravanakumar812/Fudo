
import 'package:fudo/Controller/LoginScreensController/LoginScreenController.dart';
import 'package:get/get.dart';

import '../../Controller/HomeScreenController/HomeScreenContoller.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(
            () => HomeScreenController());
  }

}