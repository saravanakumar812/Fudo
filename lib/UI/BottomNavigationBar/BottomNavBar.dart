import 'package:flutter/material.dart';
import 'package:fudo/UI/Bookings/BookingScreens.dart';
import 'package:fudo/UI/Bookings/BookingSuccessfullyScreen.dart';
import 'package:fudo/UI/OrderScreen/OrderScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/BottomNavbarController/BottomNavbarController.dart';
import '../HomeScreen/HomeScreen.dart';

class BottomNavBarScreen extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController()); // Initialize controller

  final List<Widget> _widgetList = [
    const HomeScreen(),
    const BookingScreen(),
    const BookingScreen(),
    const BookingScreen(),
    const OrderScreen(),


    // const SearchPlaceScreen(),
  ];

  static const IconData restaurant = IconData(0xe532, fontFamily: 'MaterialIcons');
  static const IconData location_on = IconData(0xe3ab, fontFamily: 'MaterialIcons');
  static const IconData directions_car = IconData(0xe1d7, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedLabelStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        selectedLabelStyle: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex.value, // Reactive index
        onTap: controller.changeIndex, // Update index via controller
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Home.png"),), label: 'Home'.tr),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/restaurant.png"),), label: 'Table'.tr),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/chef.png")), label: 'Cook'.tr),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/chef-hat.png"),), label: 'Online'),

          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/shopping-cart.png"),), label: 'Orders'),
        ],
      )),
      body: Obx(() => _widgetList[controller.currentIndex.value]), // Reactive widget change
    );
  }
}
