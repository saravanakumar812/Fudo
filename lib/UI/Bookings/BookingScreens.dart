import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/AppRoutes/App_Routes.dart';
import 'package:fudo/Utils/AppPreference.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Controller/BookingsController/BookingController.dart';
import '../../Utils/theme.dart';

class BookingScreen extends GetView<BookingScreenController> {
  const BookingScreen({super.key});

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
    BookingScreenController controller = Get.put(BookingScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          AppPreference().getTitle.toString(),
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          GestureDetector(
              onTap: (){
                // Get.toNamed(AppRoutes.profile.toName);
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
                prefixIcon: Icon(Icons.search),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                  BorderSide(width: 1, color: AppTheme.radioButtonColor),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide:
                  BorderSide(width: 1, color: AppTheme.radioButtonColor),
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
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
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: width,
              height: height * 0.12,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 1,
                    childAspectRatio: 1.5,
                    // childAspectRatio: 0.85,
                  ),
                  itemCount: controller.homeScreenData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          width: 55.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                            child: Image.asset(
                              controller.homeScreenData[index].images
                                  .toString(),
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          controller.homeScreenData[index].title.toString(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near By ${AppPreference().getBookingTitle.toString()}",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Obx(
                        () =>
                        CupertinoSwitch(
                          activeColor: AppTheme.radioButtonColor,
                          value: controller.vegSwitchValue.value,
                          onChanged: (value) {
                            controller.vegSwitchValue.value = value;
                          },
                        ),
                  )
                ],
              ),
            ),
          ),



          // Obx(
          //       () => controller.vegSwitchValue.value
          //       ? Expanded(
          //     child: ListView.builder(
          //       itemCount: controller.restaurantData.length,
          //       itemBuilder: (context, index) {
          //         // final restaurant = controller.restaurantList[index];
          //         return  Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //           child: Container(
          //             height: height * 0.15,
          //             width: width,
          //             decoration: BoxDecoration(
          //               color: Colors.grey.shade200,
          //               borderRadius: BorderRadius.circular(15),
          //             ),
          //             child: Row(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //                   child: Container(
          //                     width: width * 0.27,
          //                     height: height * 0.12,
          //                     decoration: BoxDecoration(
          //                       color: Colors.blue.shade200,
          //                       image: DecorationImage(
          //                           image: AssetImage(controller.restaurantData[index].images.toString()),
          //                           fit: BoxFit.cover),
          //                       borderRadius: BorderRadius.circular(15),
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(
          //                       vertical: 10, horizontal: 10),
          //                   child: Column(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //
          //                     children: [
          //                       Text(
          //                         controller.restaurantData[index].title.toString(),
          //                         style: GoogleFonts.poppins(
          //                             color: Colors.black,
          //                             fontSize: 18,
          //                             fontWeight: FontWeight.w700),
          //                       ),
          //                       Row(
          //                         children: [
          //                           Text(
          //                             controller.restaurantData[index].textOne.toString(),
          //                             style: GoogleFonts.poppins(
          //                                 color: Colors.black,
          //                                 fontSize: 15,
          //                                 fontWeight: FontWeight.w400),
          //                           ),
          //                           Image.asset("assets/icons/Star.png"),
          //                           Text(
          //                             controller.restaurantData[index].textTwo.toString(),
          //                             style: GoogleFonts.poppins(
          //                                 color: Colors.black,
          //                                 fontSize: 15,
          //                                 fontWeight: FontWeight.w400),
          //                           ),
          //                         ],
          //                       ),
          //                       Container(
          //                         width: width * 0.5,
          //                         child: Row(
          //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                           children: [
          //                             Row(children: [
          //                               Icon(
          //                                 Icons.delivery_dining, color: Colors.green,),
          //                               SizedBox(width: 10),
          //                               Text(
          //                                 controller.restaurantData[index].kiloMeter.toString(),
          //                                 style: GoogleFonts.poppins(
          //                                     color: Colors.black,
          //                                     fontSize: 15,
          //                                     fontWeight: FontWeight.w400),
          //                               ),
          //                             ],),
          //                             Image.asset("assets/icons/Heart.png"),
          //                           ],
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   )
          //       : Expanded(
          //     child: GoogleMap(
          //       onMapCreated: controller.onMapCreated,
          //       initialCameraPosition: CameraPosition(
          //         target: controller.initialPosition.value,
          //         zoom: 14.4746,
          //       ),
          //       onTap: (value) {
          //         controller.setMarker(value);
          //       },
          //       markers: {
          //         Marker(
          //           infoWindow:
          //           InfoWindow(title: controller.address.value),
          //           position: controller.initialPosition.value,
          //           draggable: true,
          //           markerId: MarkerId('1'),
          //           onDragEnd: (value) {
          //             controller.setMarker(value);
          //           },
          //         ),
          //       },
          //     ),
          //   ),
          // ),

          Obx(
                () {
              String title = AppPreference().getTitle.toString();
              String bookingTitle = AppPreference().getBookingTitle.toString();

              if (title == "Book a Table") {
                // Display restaurant list
                return controller.vegSwitchValue.value
                    ? Expanded(
                                      child: ListView.builder(
                    itemCount: controller.restaurantData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          if(bookingTitle == "Restaurants"){
                            AppPreference().updateTitle("Book a Table");
                            Get.toNamed(AppRoutes.bookingAbout.toName,
                              arguments: {
                                'title': controller.restaurantData[index].title,
                                'details': controller.restaurantData[index].textOne,
                                'ratings': controller.restaurantData[index].textTwo,
                                'distance': controller.restaurantData[index].kiloMeter,
                                'images': controller.restaurantData[index].images,
                            },);
                          }

                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    width: width * 0.27,
                                    height: height * 0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade200,
                                      image: DecorationImage(
                                          image: AssetImage(controller.restaurantData[index].images.toString()),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.restaurantData[index].title
                                            .toString(),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            controller.restaurantData[index].textOne
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Image.asset("assets/icons/Star.png"),
                                          Text(
                                            controller.restaurantData[index].textTwo
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: width * 0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.delivery_dining,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  controller.restaurantData[index].kiloMeter.toString(),
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Image.asset("assets/icons/Heart_icon.png"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                                      ),
                                    )
                    : Expanded(
                  child: GoogleMap(
                    onMapCreated: controller.onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: controller.initialPosition.value,
                      zoom: 14.4746,
                    ),
                    onTap: (value) {
                      controller.setMarker(value);
                    },
                    markers: {
                      Marker(
                        infoWindow: InfoWindow(
                            title: controller.address.value),
                        position: controller.initialPosition.value,
                        draggable: true,
                        markerId: MarkerId('1'),
                        onDragEnd: (value) {
                          controller.setMarker(value);
                        },
                      ),
                    },
                  ),
                );
              }

              if (title == "Book a Cook") {

                return controller.vegSwitchValue.value ?
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.cooksData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          if(bookingTitle == "Chefs"){
                            AppPreference().updateTitle("Book a Cook");
                            Get.toNamed(AppRoutes.bookingAbout.toName,
                              arguments: {
                                'title': controller.cooksData[index].title,
                                'details': controller.cooksData[index].textOne,
                                'ratings': controller.cooksData[index].textTwo,
                                'distance': controller.cooksData[index].kiloMeter,
                                'images': controller.cooksData[index].images,
                              },);
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    width: width * 0.27,
                                    height: height * 0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade200,
                                      image: DecorationImage(
                                          image: AssetImage(controller.cooksData[index].images.toString()),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.cooksData[index].title
                                            .toString(),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            controller.cooksData[index].textOne
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Image.asset("assets/icons/Star.png"),
                                          Text(
                                            controller.cooksData[index].textTwo
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: width * 0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.delivery_dining,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  controller.cooksData[index].kiloMeter.toString(),
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Image.asset("assets/icons/Heart_icon.png"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ): Expanded(
                  child: GoogleMap(
                    onMapCreated: controller.onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: controller.initialPosition.value,
                      zoom: 14.4746,
                    ),
                    onTap: (value) {
                      controller.setMarker(value);
                    },
                    markers: {
                      Marker(
                        infoWindow: InfoWindow(
                            title: controller.address.value),
                        position: controller.initialPosition.value,
                        draggable: true,
                        markerId: MarkerId('1'),
                        onDragEnd: (value) {
                          controller.setMarker(value);
                        },
                      ),
                    },
                  ),
                );
              }


               if (title == "Book a Online Cook") {

                return controller.vegSwitchValue.value ?
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.onlineCooksData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          if(bookingTitle == "Online Chefs"){
                            AppPreference().updateTitle("Book a Online Cook");
                            Get.toNamed(AppRoutes.bookingAbout.toName,
                              arguments: {
                                'title': controller.onlineCooksData[index].title,
                                'details': controller.onlineCooksData[index].textOne,
                                'ratings': controller.onlineCooksData[index].textTwo,
                                'distance': controller.onlineCooksData[index].kiloMeter,
                                'images': controller.onlineCooksData[index].images,
                              },);
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    width: width * 0.27,
                                    height: height * 0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade200,
                                      image: DecorationImage(
                                          image: AssetImage(controller.onlineCooksData[index].images.toString()),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.onlineCooksData[index].title
                                            .toString(),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            controller.onlineCooksData[index].textOne
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Image.asset("assets/icons/Star.png"),
                                          Text(
                                            controller.onlineCooksData[index].textTwo
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: width * 0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.delivery_dining,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  controller.onlineCooksData[index].kiloMeter.toString(),
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Image.asset("assets/icons/Heart_icon.png"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ):
                Expanded(
                  child: GoogleMap(
                    onMapCreated: controller.onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: controller.initialPosition.value,
                      zoom: 14.4746,
                    ),
                    onTap: (value) {
                      controller.setMarker(value);
                    },
                    markers: {
                      Marker(
                        infoWindow: InfoWindow(
                            title: controller.address.value),
                        position: controller.initialPosition.value,
                        draggable: true,
                        markerId: MarkerId('1'),
                        onDragEnd: (value) {
                          controller.setMarker(value);
                        },
                      ),
                    },
                  ),
                );
              }

              return Container();
            },
          ),

        ],
      ),
    );
  }
}
