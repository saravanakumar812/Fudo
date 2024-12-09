


import 'package:get/get.dart';

import '../../Controller/BookingsController/BookingAboutScreenController.dart';



class BookingAboutScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookingAboutScreenController>(
            () => BookingAboutScreenController());
  }

}