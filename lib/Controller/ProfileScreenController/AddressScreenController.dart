import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Components/image_pickers.dart';

class AddressScreenController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController timeOfBirthController = TextEditingController();
  TextEditingController marriageController = TextEditingController();
  RxBool vegSwitchValue = RxBool(false);
  Rx<PickedImage?> itemImage = Rx<PickedImage?>(null);
  RxList<PickedImage> productImages = RxList();
  RxBool isImageSelected = false.obs;
  RxString imageString = RxString("");
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}