import 'package:fudo/Controller/LoginScreensController/Signup_with_Phone_Screen_Controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupPhoneScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignupPhoneScreenController>(
            () => SignupPhoneScreenController());
  }

}