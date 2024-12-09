

import 'package:fudo/Controller/BookingsController/BookingController.dart';
import 'package:get/get.dart';

import '../../Controller/BookingsController/BookingSuccessfullyControllerScreen.dart';
import '../../Controller/BottomNavbarController/BottomNavbarController.dart';


class BookingSuccessfullyScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookingSuccessfullyScreenController>(
            () => BookingSuccessfullyScreenController());
  }

}