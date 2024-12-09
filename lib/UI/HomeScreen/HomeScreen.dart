import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/AppRoutes/App_Routes.dart';
import 'package:fudo/Controller/HomeScreenController/HomeScreenController.dart';
import 'package:fudo/UI/Bookings/BookingSuccessfullyScreen.dart';
import 'package:fudo/Utils/AppPreference.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/theme.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        actions: [
          GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.profile.toName);
              },
              child: Image.asset("assets/icons/Profile_icon.png")),
          SizedBox(
            width: width * .05,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: controller.searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppTheme.grey),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: AppTheme.grey),
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                contentPadding: const EdgeInsets.only(left: 20),
                border: OutlineInputBorder(
                  borderSide:
                  BorderSide(width: 1, color: AppTheme.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                  color: AppTheme.containerBackground,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
              height: height * 0.71,
              child: Obx(
                    () =>
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        crossAxisSpacing: 5, // Horizontal spacing between items
                        mainAxisSpacing: 5, // Vertical spacing between items
                        childAspectRatio: 0.95, // Aspect ratio for each item
                      ),
                      itemCount: controller.homeScreenData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            if (controller.homeScreenData[index].title ==
                                "Book a Table") {
                              AppPreference().updateTitle("Book a Table");
                              AppPreference().updateBookingTitle("Restaurants");
                              Get.toNamed(AppRoutes.booking.toName);
                            }

                            if (controller.homeScreenData[index].title ==
                                "Book a Cook") {
                              AppPreference().updateTitle("Book a Cook");
                              AppPreference().updateBookingTitle("Chefs");
                              Get.toNamed(AppRoutes.booking.toName);
                            }

                            if (controller.homeScreenData[index].title ==
                                "Book a Online Cook") {
                              AppPreference().updateTitle("Book a Online Cook");
                              AppPreference().updateBookingTitle("Online Chefs");
                              Get.toNamed(AppRoutes.booking.toName);
                            }
                            if (controller.homeScreenData[index].title ==
                                "Orders") {
                              AppPreference().updateTitle("Orders");

                              Get.toNamed(AppRoutes.order.toName);
                            }

                            
                          },
                          child: Column(
                            children: [
                              Container(
                                width: width * 0.3,
                                height: height * 0.15,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/dashboard_logo.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                controller.homeScreenData[index].title
                                    .toString(),
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
              ))
        ],
      ),
    );
  }
}
