import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../Controller/ProfileScreenController/languageScreenController.dart';

class LanguageScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LanguageScreenController>(
            () => LanguageScreenController());
  }

}