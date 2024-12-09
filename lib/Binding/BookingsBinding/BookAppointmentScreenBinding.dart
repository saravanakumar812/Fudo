

import 'package:fudo/Controller/BookingsController/BookingController.dart';
import 'package:get/get.dart';

import '../../Controller/BookingsController/BookAppointmentScreenController.dart';
import '../../Controller/BottomNavbarController/BottomNavbarController.dart';


class BookAppointmentScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookAppointmentScreenController>(
            () => BookAppointmentScreenController());
  }

}