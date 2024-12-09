

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Utlis/AppPreference.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;
  String bookingTitle = AppPreference().getBookingTitle.toString();

  void changeIndex(int index) {
    currentIndex.value = index;
    if(index == 1){

      AppPreference().updateTitle("Book a Table");
      AppPreference().updateBookingTitle("Restaurants");


    }
    if(index == 2){

      AppPreference().updateTitle("Book a Cook");
      AppPreference().updateBookingTitle("Chefs");
    }
    if(index == 3){

      AppPreference().updateTitle("Book a Online Cook");
      AppPreference().updateBookingTitle("Online Chefs");
    }
  }
}