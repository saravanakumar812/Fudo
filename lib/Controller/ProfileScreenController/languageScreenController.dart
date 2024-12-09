import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LanguageScreenController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  RxBool selectedEnglishUs = false.obs;
  RxBool selectedEnglishUk = false.obs;
  RxBool selectedTamil = false.obs;
  RxBool selectedKannada = false.obs;
  RxBool selectedMalayalam = false.obs;
  RxBool selectedHindi = false.obs;
  RxBool selectedTelugu = false.obs;
  RxBool selectedBengali = false.obs;

  RxBool vegSwitchValue = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}