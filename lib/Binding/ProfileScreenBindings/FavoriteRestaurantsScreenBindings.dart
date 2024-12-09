import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
// import 'package:untitled/Controllers/ProfileScreenController/FavoriteRestaurantScreenController.dart';

import '../../Controller/ProfileScreenController/FavoriteRestaurantScreenController.dart';





class FavoriteRestaurantsScreenScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FavoriteRestaurantsScreenController>(
            () => FavoriteRestaurantsScreenController());
  }

}