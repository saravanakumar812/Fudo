import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/Utlis/theme.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Controller/BookingsController/BookingAboutScreenController.dart';
import '../../Utlis/AppPreference.dart';

class BookingAboutScreen extends GetView<BookingAboutScreenController> {
  const BookingAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    BookingAboutScreenController controller =
        Get.put(BookingAboutScreenController());
    String title = AppPreference().getTitle.toString();
    final arguments = Get.arguments;
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            if (title == "Book a Table")
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: width,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(arguments['images']),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            "Open",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade600,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                "assets/icons/Star.png"),
                                            Text(
                                              arguments['ratings'],
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${arguments['title']}',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${arguments['details']}',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "assets/icons/Icons.png",
                                width: width * 0.3,
                                height: height * 0.1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            else
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Container(
                          width: width * 0.27,
                          height: height * 0.12,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            image: DecorationImage(
                                image: AssetImage(arguments['images']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Open",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade600,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/icons/Star.png"),
                                      Text(
                                        arguments['ratings'],
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${arguments['title']}',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '${arguments['details']}',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Image.asset(
                              "assets/icons/Icons.png",
                              width: width * 0.15,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                        color: AppTheme.radioButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Table No : 6",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // TabBar
                GetBuilder<BookingAboutScreenController>(
                  builder: (controller) {
                    return TabBar(
                      controller: controller.nestedTabController,
                      indicatorColor: Colors.teal,
                      labelColor: Colors.teal,
                      unselectedLabelColor: Colors.black54,
                      isScrollable: false,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 5,
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                      tabs: const <Widget>[
                        Tab(
                          text: "About",
                        ),
                        Tab(text: "Menu"),
                        Tab(text: "Offers"),
                        Tab(text: "Gallery"),
                        Tab(text: "Review"),
                      ],
                    );
                  },
                ),
                // TabBarView
                GetBuilder<BookingAboutScreenController>(
                  builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: height,
                        child: TabBarView(
                          controller: controller.nestedTabController,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcolaboris nisi ut aliquip ex ea commodo consequat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam remaperiam...Read More The Crew Table No: 6 Book a Table 9:41 Home",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(children: [
                                  if (title == "Book a Table")
                                    Expanded(

                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: controller
                                            .restaurantTableData.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              if (title == "Book a Table"){
                                                AppPreference().updateTitle("Book a Table");
                                                Get.toNamed(AppRoutes.bookAppointment.toName);
                                              }
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 20),
                                              child: Container(
                                                height: height * 0.15,
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10),
                                                      child: Container(
                                                        width: width * 0.27,
                                                        height: height * 0.12,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .blue.shade200,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  controller
                                                                      .restaurantTableData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                              fit:
                                                                  BoxFit.cover),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            controller
                                                                .restaurantTableData[
                                                                    index]
                                                                .title
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .restaurantTableData[
                                                                        index]
                                                                    .textOne
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              Image.asset(
                                                                  "assets/icons/Star.png"),
                                                              Text(
                                                                controller
                                                                    .restaurantTableData[
                                                                        index]
                                                                    .textTwo
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: width * 0.5,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .delivery_dining,
                                                                      color: Colors
                                                                          .green,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            10),
                                                                    Text(
                                                                      controller
                                                                          .restaurantTableData[
                                                                              index]
                                                                          .kiloMeter
                                                                          .toString(),
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Image.asset(
                                                                    "assets/icons/Heart_icon.png"),
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
                                  else if (title == "Book a Cook")
                                    Expanded(
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount:
                                            controller.cooksMenuData.length,
                                        itemBuilder: (context, index) {

                                          return GestureDetector(
                                            onTap: () {
                                              if (title == "Book a Cook"){
                                                AppPreference().updateTitle("Book a Cook");
                                                Get.toNamed(AppRoutes.bookAppointment.toName);
                                              }
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 20),
                                              child: Container(
                                                height: height * 0.15,
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10),
                                                      child: Container(
                                                        width: width * 0.27,
                                                        height: height * 0.12,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .blue.shade200,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  controller
                                                                      .restaurantTableData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                              fit:
                                                                  BoxFit.cover),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            controller
                                                                .cooksMenuData[
                                                                    index]
                                                                .title
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .cooksMenuData[
                                                                        index]
                                                                    .textOne
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              Image.asset(
                                                                  "assets/icons/Star.png"),
                                                              Text(
                                                                controller
                                                                    .cooksMenuData[
                                                                        index]
                                                                    .textTwo
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: width * 0.5,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .delivery_dining,
                                                                      color: Colors
                                                                          .green,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            10),
                                                                    Text(
                                                                      controller
                                                                          .cooksMenuData[
                                                                              index]
                                                                          .kiloMeter
                                                                          .toString(),
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Image.asset(
                                                                    "assets/icons/Heart_icon.png"),
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
                                  else
                                    Expanded(
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: controller
                                            .cooksOnlineMenuData.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              if (title == "Book a Online Cook"){
                                                AppPreference().updateTitle("Book a Online Cook");
                                                Get.toNamed(AppRoutes.bookAppointment.toName);
                                              }
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 20),
                                              child: Container(
                                                height: height * 0.15,
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10),
                                                      child: Container(
                                                        width: width * 0.27,
                                                        height: height * 0.12,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .blue.shade200,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  controller
                                                                      .cooksOnlineMenuData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                              fit:
                                                                  BoxFit.cover),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            controller
                                                                .cooksOnlineMenuData[
                                                                    index]
                                                                .title
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .cooksOnlineMenuData[
                                                                        index]
                                                                    .textOne
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              Image.asset(
                                                                  "assets/icons/Star.png"),
                                                              Text(
                                                                controller
                                                                    .cooksOnlineMenuData[
                                                                        index]
                                                                    .textTwo
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: width * 0.5,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .delivery_dining,
                                                                      color: Colors
                                                                          .green,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            10),
                                                                    Text(
                                                                      controller
                                                                          .cooksOnlineMenuData[
                                                                              index]
                                                                          .kiloMeter
                                                                          .toString(),
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Image.asset(
                                                                    "assets/icons/Heart_icon.png"),
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
                                ])),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          "Today Offer's",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      if (title == "Book a Table")
                                        Expanded(
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: controller
                                                .todayOffersTableData.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .todayOffersTableData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .todayOffersTableData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .todayOffersTableData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .todayOffersTableData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .todayOffersTableData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                      else if (title == "Book a Cook")
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: controller
                                                .todayOffersCookData.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .todayOffersCookData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .todayOffersCookData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .todayOffersCookData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .todayOffersCookData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .todayOffersCookData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                      else
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: controller
                                                .todayOffersOnlineCookData
                                                .length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .todayOffersOnlineCookData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .todayOffersOnlineCookData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .todayOffersOnlineCookData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .todayOffersOnlineCookData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .todayOffersOnlineCookData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                        ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Text(
                                          "Special Offer's",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      if (title == "Book a Table")
                                        Expanded(
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: controller
                                                .specialOffersTableData.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .specialOffersTableData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .specialOffersTableData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .specialOffersTableData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .specialOffersTableData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .specialOffersTableData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                      else if (title == "Book a Cook")
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: controller
                                                .specialOffersCookData.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .specialOffersCookData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .specialOffersCookData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .specialOffersCookData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .specialOffersCookData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .specialOffersCookData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                      else
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: controller
                                                .specialOffersOnlineCookData
                                                .length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
                                                  child: Container(
                                                    height: height * 0.15,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          child: Container(
                                                            width: width * 0.27,
                                                            height:
                                                                height * 0.12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors.blue
                                                                  .shade200,
                                                              image: DecorationImage(
                                                                  image: AssetImage(controller
                                                                      .specialOffersOnlineCookData[
                                                                          index]
                                                                      .images
                                                                      .toString()),
                                                                  fit: BoxFit
                                                                      .cover),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                controller
                                                                    .specialOffersOnlineCookData[
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                                style: GoogleFonts.poppins(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .specialOffersOnlineCookData[
                                                                            index]
                                                                        .textOne
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                  Image.asset(
                                                                      "assets/icons/Star.png"),
                                                                  Text(
                                                                    controller
                                                                        .specialOffersOnlineCookData[
                                                                            index]
                                                                        .textTwo
                                                                        .toString(),
                                                                    style: GoogleFonts.poppins(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.5,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .delivery_dining,
                                                                          color:
                                                                              Colors.green,
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                10),
                                                                        Text(
                                                                          controller
                                                                              .specialOffersOnlineCookData[index]
                                                                              .kiloMeter
                                                                              .toString(),
                                                                          style: GoogleFonts.poppins(
                                                                              color: Colors.black,
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w400),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Image.asset(
                                                                        "assets/icons/Heart_icon.png"),
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
                                        ),
                                    ])),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  if (title == "Book a Table")
                                    Expanded(
                                      child: GridView.builder(
                                        padding: EdgeInsets.all(8),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 8,
                                        ),
                                        itemCount: controller.images.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              controller.images[index],
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  else if (title == "Book a Cook")
                                    Expanded(
                                      child: GridView.builder(
                                        padding: EdgeInsets.all(8),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 8,
                                        ),
                                        itemCount: controller.images.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              controller.images[index],
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  else
                                    Expanded(
                                      child: GridView.builder(
                                        padding: EdgeInsets.all(8),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 8,
                                        ),
                                        itemCount: controller.images.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              controller.images[index],
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),

                              ),
                              child: Column(
                                children: [
                                  if (title == "Book a Table")
                                  Expanded(
                                    child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                        itemCount: controller.reviews.length,
                                        itemBuilder: (BuildContext context , int index) {
                                          final review = controller.reviews[index];
                                      return Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                        child: Container(
                                          height: height * 0.2,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Container(
                                                      width: width * 0.1,
                                                      height: height * 0.05,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage("assets/icons/Profile Photo.png"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          review['name'],
                                                          style: GoogleFonts.poppins(
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        ),
                                                        SizedBox(height: 5), // Add spacing between elements
                                                        Row(
                                                          children: [
                                                            Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                            Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                            Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                            SizedBox(width: 10),
                                                            Text(
                                                              review['date'],
                                                              style: GoogleFonts.poppins(
                                                                color: Colors.black,
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 5), // Add spacing between elements
                                                        Container(
                                                          width: width * 0.6, // Adjust width to fit your layout
                                                          child: Text(
                                                            review['review'],
                                                            style: GoogleFonts.poppins(
                                                              color: Colors.black,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                            maxLines: 2, // Limit lines to prevent overflow
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                  width: width,
                                                  child: TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: Colors.cyan.shade50,
                                                      primary: Colors.cyan,
                                                    ),
                                                    onPressed: () {},
                                                    child: Text("Reply"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );

                                    }),
                                  )
                                  else if (title == "Book a Cook")
                                    Expanded(
                                      child: ListView.builder(
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: controller.reviews.length,
                                          itemBuilder: (BuildContext context , int index) {
                                            final review = controller.reviews[index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                              child: Container(
                                                height: height * 0.2,
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.all(10),
                                                          child: Container(
                                                            width: width * 0.1,
                                                            height: height * 0.05,
                                                            decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: AssetImage("assets/icons/Profile Photo.png"),
                                                                fit: BoxFit.cover,
                                                              ),
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                review['name'],
                                                                style: GoogleFonts.poppins(
                                                                  color: Colors.black,
                                                                  fontSize: 18,
                                                                  fontWeight: FontWeight.w700,
                                                                ),
                                                              ),
                                                              SizedBox(height: 5), // Add spacing between elements
                                                              Row(
                                                                children: [
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  SizedBox(width: 10),
                                                                  Text(
                                                                    review['date'],
                                                                    style: GoogleFonts.poppins(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight.w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5), // Add spacing between elements
                                                              Container(
                                                                width: width * 0.6, // Adjust width to fit your layout
                                                                child: Text(
                                                                  review['review'],
                                                                  style: GoogleFonts.poppins(
                                                                    color: Colors.black,
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400,
                                                                  ),
                                                                  maxLines: 2, // Limit lines to prevent overflow
                                                                  overflow: TextOverflow.ellipsis,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                      child: Container(
                                                        width: width,
                                                        child: TextButton(
                                                          style: TextButton.styleFrom(
                                                            backgroundColor: Colors.cyan.shade50,
                                                            primary: Colors.cyan,
                                                          ),
                                                          onPressed: () {},
                                                          child: Text("Reply"),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );

                                          }),
                                    )
                                  else
                                    Expanded(
                                      child: ListView.builder(
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: controller.reviews.length,
                                          itemBuilder: (BuildContext context , int index) {
                                            final review = controller.reviews[index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                              child: Container(
                                                height: height * 0.2,
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.all(10),
                                                          child: Container(
                                                            width: width * 0.1,
                                                            height: height * 0.05,
                                                            decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                image: AssetImage("assets/icons/Profile Photo.png"),
                                                                fit: BoxFit.cover,
                                                              ),
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                review['name'],
                                                                style: GoogleFonts.poppins(
                                                                  color: Colors.black,
                                                                  fontSize: 18,
                                                                  fontWeight: FontWeight.w700,
                                                                ),
                                                              ),
                                                              SizedBox(height: 5), // Add spacing between elements
                                                              Row(
                                                                children: [
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  Image.asset("assets/icons/Star.png", height: 16, width: 16),
                                                                  SizedBox(width: 10),
                                                                  Text(
                                                                    review['date'],
                                                                    style: GoogleFonts.poppins(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight.w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5), // Add spacing between elements
                                                              Container(
                                                                width: width * 0.6, // Adjust width to fit your layout
                                                                child: Text(
                                                                  review['review'],
                                                                  style: GoogleFonts.poppins(
                                                                    color: Colors.black,
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400,
                                                                  ),
                                                                  maxLines: 2, // Limit lines to prevent overflow
                                                                  overflow: TextOverflow.ellipsis,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                      child: Container(
                                                        width: width,
                                                        child: TextButton(
                                                          style: TextButton.styleFrom(
                                                            backgroundColor: Colors.cyan.shade50,
                                                            primary: Colors.cyan,
                                                          ),
                                                          onPressed: () {},
                                                          child: Text("Reply"),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );

                                          }),
                                    )
                                ],
                              )

                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       Text('Title: ${arguments['title']}'),
      //       Text('Details: ${arguments['details']}'),
      //       Text('Distance: ${arguments['distance']}'),
      //     ],
      //   ),
      // ),
    );
  }
}

class GallerySection extends StatelessWidget {
  final List<String> images = [
    'assets/images/GalleryTableTwo.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableOne.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableThree.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableFour.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableFive.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableSix.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableSeven.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableEight.png',
    // Replace with actual paths to your images
    'assets/images/GalleryTableNine.png',
    // Replace with actual paths to your images
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
