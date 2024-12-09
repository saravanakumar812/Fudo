import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SecurityScreenController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  RxBool rememberMe = RxBool(false);
  RxBool faceID = RxBool(false);
  RxBool biometricID = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}