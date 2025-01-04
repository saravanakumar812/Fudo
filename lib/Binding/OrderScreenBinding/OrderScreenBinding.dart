
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controller/OrderScreenController/OrderScreenController.dart';

class OrderScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OrderScreenController>(
            () => OrderScreenController());
  }

}