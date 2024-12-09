import 'package:fudo/Controller/LoginScreensController/Signup_with_Name_Screen_Controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupNameScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignupNameScreenController>(
            () => SignupNameScreenController());
  }

}