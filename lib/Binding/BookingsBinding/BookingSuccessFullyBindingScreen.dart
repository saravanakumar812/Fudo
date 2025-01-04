


import 'package:get/get.dart';

import '../../Controller/BookingsController/BookingSuccessfullyControllerScreen.dart';



class BookingSuccessfullyScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookingSuccessfullyScreenController>(
            () => BookingSuccessfullyScreenController());
  }

}