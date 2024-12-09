


import 'package:get/get.dart';
import '../../Controller/BookingsController/BookAppointmentScreenController.dart';



class BookAppointmentScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BookAppointmentScreenController>(
            () => BookAppointmentScreenController());
  }

}