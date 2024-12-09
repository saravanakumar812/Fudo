

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupPhoneScreenController extends GetxController{

  TextEditingController phoneNumberController = TextEditingController();
  RxBool isChecked = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}