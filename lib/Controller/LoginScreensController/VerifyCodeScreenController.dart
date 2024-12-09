

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerifyCodeScreenController extends GetxController{

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fieldOne = TextEditingController();
  TextEditingController fieldTwo = TextEditingController();
  TextEditingController fieldThree = TextEditingController();
  TextEditingController fieldFour = TextEditingController();
  TextEditingController fieldFive = TextEditingController();
  TextEditingController fieldSix = TextEditingController();
  RxBool isChecked = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}