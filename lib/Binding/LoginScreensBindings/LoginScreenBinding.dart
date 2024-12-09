
import 'package:fudo/Controller/LoginScreensController/LoginScreenController.dart';
import 'package:get/get.dart';

class LoginScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
            () => LoginScreenController());
  }

}