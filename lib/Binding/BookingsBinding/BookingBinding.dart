

import 'package:fudo/Controller/BookingsController/BookingController.dart';
import 'package:get/get.dart';

import '../../Controller/BottomNavbarController/BottomNavbarController.dart';


class BookingScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookingScreenController>(
            () => BookingScreenController());
  }

}