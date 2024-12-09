import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/Key.dart';

class HelpCenterScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController nestedTabController;
  TextEditingController searchController = TextEditingController();
  RxBool rememberMe = RxBool(false);
  RxBool faceID = RxBool(false);
  RxBool biometricID = RxBool(false);
  RxInt selectedTabIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nestedTabController = TabController(length: 2, vsync: this);
  }

  List<KeyValues> listValues = [
    KeyValues(key: "0", value: "General "),
    KeyValues(key: "1", value: "Account"),
    KeyValues(key: "2", value: "Service"),
  ];

  updateCurrentTabIndex(int index) {
    print("INDEX$index");
    selectedTabIndex.value = index;
    listValues[selectedTabIndex.value].key;
    update();
  }
}
