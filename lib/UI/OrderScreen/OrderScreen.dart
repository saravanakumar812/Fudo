import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/forms.dart';
import '../../Controller/OrderScreenController/OrderScreenController.dart';
import '../../Utlis/AppPreference.dart';
import '../../Utlis/theme.dart';

class OrderScreen extends GetView<OrderScreenController> {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    OrderScreenController controller = Get.put(OrderScreenController());
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
          GetBuilder<OrderScreenController>(
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
                  Tab(text: "Active",),
                  Tab(text: "Completed"),
                  Tab(text: "Cancel"),
                ],
              );
            },
          ),
          GetBuilder<OrderScreenController>(builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Container(
                height: height * 0.71,
                child: TabBarView(
                  controller: controller.nestedTabController,
                  children: [
                    Container(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Container(
                              height: height * 0.25,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          width: width * 0.27,
                                          height: height * 0.12,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/OrderOne.png"),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Big Garden Salad",
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            // Add spacing between elements
                                            Row(
                                              children: [
                                                Text(
                                                  "3 items | 2.4 km",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            // Add spacing between elements
                                            Row(
                                              children: [
                                                Text(
                                                  "\$21.20",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.green,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  maxLines: 2,
                                                  // Limit lines to prevent overflow
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 2),
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "Paid",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Divider(
                                      color: Colors.grey.shade400,
                                      thickness: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppButton(
                                          width: width / 2.5,
                                          height: 40,
                                          title: 'Cancel Order',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          onPressed: () {
                                            Get.back();
                                          },
                                          color: Colors.white,
                                          titleColor: Colors.red,
                                          borderColor: Colors.red,
                                        ),
                                        AppButton(
                                          width: width / 2.5,
                                          height: 40,
                                          title: 'Track Driver',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          onPressed: () {
                                            Get.back();
                                          },
                                          color: AppTheme.radioButtonColor,
                                          titleColor: AppTheme.white,
                                          borderColor:
                                              AppTheme.radioButtonColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                          // return Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          //   child: Container(
                          //     height: height * 0.18,
                          //     width: width,
                          //     decoration: BoxDecoration(
                          //       color:
                          //       Colors.grey.shade200,
                          //       borderRadius:
                          //       BorderRadius.circular(
                          //           15),
                          //     ),
                          //     child: Row(
                          //       children: [
                          //         Padding(
                          //           padding: EdgeInsets
                          //               .symmetric(
                          //               horizontal:
                          //               10,
                          //               vertical: 10),
                          //           child: Container(
                          //             width: width * 0.27,
                          //             height:
                          //             height * 0.15,
                          //             decoration:
                          //             BoxDecoration(
                          //               color: Colors.blue
                          //                   .shade200,
                          //               image: DecorationImage(
                          //                   image: AssetImage("assets/images/OrderOne.png"),
                          //                   fit: BoxFit
                          //                       .cover),
                          //               borderRadius:
                          //               BorderRadius
                          //                   .circular(
                          //                   15),
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding:
                          //           const EdgeInsets
                          //               .symmetric(
                          //               vertical: 10,
                          //               horizontal:
                          //               10),
                          //           child: Column(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment
                          //                 .spaceBetween,
                          //             crossAxisAlignment:
                          //             CrossAxisAlignment
                          //                 .start,
                          //             children: [
                          //               Text(
                          //                 "Big Garden Salad",
                          //                 style: GoogleFonts.poppins(
                          //                     color: Colors
                          //                         .black,
                          //                     fontSize:
                          //                     18,
                          //                     fontWeight:
                          //                     FontWeight
                          //                         .w700),
                          //               ),
                          //               Row(
                          //                 children: [
                          //                   Text(
                          //                     "3 items | 2.4 km",
                          //                     style: GoogleFonts.poppins(
                          //                         color: Colors
                          //                             .black,
                          //                         fontSize:
                          //                         15,
                          //                         fontWeight:
                          //                         FontWeight.w400),
                          //                   ),
                          //
                          //
                          //                 ],
                          //               ),
                          //               Container(
                          //                 width:
                          //                 width * 0.5,
                          //                 child: Row(
                          //                   mainAxisAlignment:
                          //                   MainAxisAlignment
                          //                       .spaceBetween,
                          //                   children: [
                          //                     Row(
                          //                       children: [
                          //
                          //
                          //                         Text(
                          //                           "\$21.20",
                          //                           style: GoogleFonts.poppins(
                          //                               color: Colors.black,
                          //                               fontSize: 15,
                          //                               fontWeight: FontWeight.w400),
                          //                         ),
                          //                         SizedBox(
                          //                             width:
                          //                             10),
                          //
                          //                       ],
                          //                     ),
                          //
                          //                   ],
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // );
                        },
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: controller.completedOrderData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Container(
                              height: height * 0.25,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          width: width * 0.27,
                                          height: height * 0.12,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  controller.completedOrderData[index].images.toString()),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              controller.completedOrderData[index].title.toString(),
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            // Add spacing between elements
                                            Row(
                                              children: [
                                                Text(
                                                  controller.completedOrderData[index].items.toString(),
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            // Add spacing between elements
                                            Row(
                                              children: [
                                                Text(
                                                  controller.completedOrderData[index].amount.toString(),
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.green,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  maxLines: 2,
                                                  // Limit lines to prevent overflow
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 2),
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Center(
                                                    child: Text(
                                                      "completed",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Divider(
                                      color: Colors.grey.shade400,
                                      thickness: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppButton(
                                          width: width / 2.4,
                                          height: 40,
                                          title: 'Leave a review',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          onPressed: () {
                                            Get.back();
                                          },
                                          color: Colors.white,
                                          titleColor: AppTheme.bottomTabsLabelInActiveColor,
                                          borderColor: AppTheme.cancelBorder,
                                        ),
                                        AppButton(
                                          width: width / 2.4,
                                          height: 40,
                                          title: 'Order again',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          onPressed: () {
                                            Get.back();
                                          },
                                          color: AppTheme.radioButtonColor,
                                          titleColor: AppTheme.white,
                                          borderColor:
                                              AppTheme.radioButtonColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                          // return Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          //   child: Container(
                          //     height: height * 0.18,
                          //     width: width,
                          //     decoration: BoxDecoration(
                          //       color:
                          //       Colors.grey.shade200,
                          //       borderRadius:
                          //       BorderRadius.circular(
                          //           15),
                          //     ),
                          //     child: Row(
                          //       children: [
                          //         Padding(
                          //           padding: EdgeInsets
                          //               .symmetric(
                          //               horizontal:
                          //               10,
                          //               vertical: 10),
                          //           child: Container(
                          //             width: width * 0.27,
                          //             height:
                          //             height * 0.15,
                          //             decoration:
                          //             BoxDecoration(
                          //               color: Colors.blue
                          //                   .shade200,
                          //               image: DecorationImage(
                          //                   image: AssetImage("assets/images/OrderOne.png"),
                          //                   fit: BoxFit
                          //                       .cover),
                          //               borderRadius:
                          //               BorderRadius
                          //                   .circular(
                          //                   15),
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding:
                          //           const EdgeInsets
                          //               .symmetric(
                          //               vertical: 10,
                          //               horizontal:
                          //               10),
                          //           child: Column(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment
                          //                 .spaceBetween,
                          //             crossAxisAlignment:
                          //             CrossAxisAlignment
                          //                 .start,
                          //             children: [
                          //               Text(
                          //                 "Big Garden Salad",
                          //                 style: GoogleFonts.poppins(
                          //                     color: Colors
                          //                         .black,
                          //                     fontSize:
                          //                     18,
                          //                     fontWeight:
                          //                     FontWeight
                          //                         .w700),
                          //               ),
                          //               Row(
                          //                 children: [
                          //                   Text(
                          //                     "3 items | 2.4 km",
                          //                     style: GoogleFonts.poppins(
                          //                         color: Colors
                          //                             .black,
                          //                         fontSize:
                          //                         15,
                          //                         fontWeight:
                          //                         FontWeight.w400),
                          //                   ),
                          //
                          //
                          //                 ],
                          //               ),
                          //               Container(
                          //                 width:
                          //                 width * 0.5,
                          //                 child: Row(
                          //                   mainAxisAlignment:
                          //                   MainAxisAlignment
                          //                       .spaceBetween,
                          //                   children: [
                          //                     Row(
                          //                       children: [
                          //
                          //
                          //                         Text(
                          //                           "\$21.20",
                          //                           style: GoogleFonts.poppins(
                          //                               color: Colors.black,
                          //                               fontSize: 15,
                          //                               fontWeight: FontWeight.w400),
                          //                         ),
                          //                         SizedBox(
                          //                             width:
                          //                             10),
                          //
                          //                       ],
                          //                     ),
                          //
                          //                   ],
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // );
                        },
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: controller.cancelOrderData.length,
                        itemBuilder: (BuildContext context, int index) {
                          // return Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          //   child: Container(
                          //     height: height * 0.25,
                          //     width: width,
                          //     decoration: BoxDecoration(
                          //       color: Colors.grey.shade200,
                          //       borderRadius: BorderRadius.circular(15),
                          //     ),
                          //     child: Column(
                          //       children: [
                          //         Row(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             Padding(
                          //               padding: EdgeInsets.all(10),
                          //               child: Container(
                          //                 width: width * 0.27,
                          //                 height: height * 0.12,
                          //                 decoration: BoxDecoration(
                          //                   image: DecorationImage(
                          //                     image: AssetImage("assets/images/OrderOne.png"),
                          //                     fit: BoxFit.cover,
                          //                   ),
                          //                   borderRadius: BorderRadius.circular(15),
                          //                 ),
                          //               ),
                          //             ),
                          //             Padding(
                          //               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          //               child: Column(
                          //                 crossAxisAlignment: CrossAxisAlignment.start,
                          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //                 children: [
                          //                   Text(
                          //                     "Big Garden Salad",
                          //                     style: GoogleFonts.poppins(
                          //                       color: Colors.black,
                          //                       fontSize: 18,
                          //                       fontWeight: FontWeight.w700,
                          //                     ),
                          //                   ),
                          //                   SizedBox(height: 10), // Add spacing between elements
                          //                   Row(
                          //                     children: [
                          //
                          //
                          //                       Text(
                          //                         "3 items | 2.4 km",
                          //                         style: GoogleFonts.poppins(
                          //                           color: Colors.black,
                          //                           fontSize: 12,
                          //                           fontWeight: FontWeight.w400,
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                   SizedBox(height: 10), // Add spacing between elements
                          //                   Row(
                          //                     children: [
                          //                       Text(
                          //                        "\$21.20",
                          //                         style: GoogleFonts.poppins(
                          //                           color: Colors.black,
                          //                           fontSize: 14,
                          //                           fontWeight: FontWeight.w400,
                          //                         ),
                          //                         maxLines: 2, // Limit lines to prevent overflow
                          //                         overflow: TextOverflow.ellipsis,
                          //                       ),
                          //                       SizedBox(width: 5,),
                          //                       Container(
                          //                         padding: EdgeInsets.symmetric(
                          //                             horizontal: 12, vertical: 2),
                          //                         decoration: BoxDecoration(
                          //                             color: Colors.green,
                          //                             borderRadius:
                          //                             BorderRadius.circular(5)),
                          //                         child: Center(
                          //                           child: Text(
                          //                             "completed",
                          //                             style: GoogleFonts.poppins(
                          //                                 color: Colors.white,
                          //                                 fontSize: 12,
                          //                                 fontWeight: FontWeight.w300),
                          //                           ),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //        Padding(
                          //          padding: const EdgeInsets.symmetric(horizontal: 10),
                          //          child: Divider(
                          //            color: Colors.grey.shade400,
                          //            thickness: 2,
                          //          ),
                          //        ),
                          //         SizedBox(height: 10,),
                          //         Padding(
                          //           padding: const EdgeInsets.symmetric(horizontal: 10),
                          //           child: Row(
                          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               AppButton(
                          //                 width: width / 2.4,
                          //                 height: 40,
                          //                 title: 'Leave a review',
                          //                 fontSize: 14,
                          //                 fontWeight: FontWeight.w600,
                          //                 onPressed: () {
                          //                   Get.back();
                          //                 },
                          //                 color: Colors.white,
                          //                 titleColor: Colors.red,
                          //                 borderColor: Colors.red,
                          //               ),
                          //               AppButton(
                          //                 width: width / 2.4,
                          //                 height: 40,
                          //                 title: 'Order again',
                          //                 fontSize: 14,
                          //                 fontWeight: FontWeight.w600,
                          //                 onPressed: () {
                          //                   Get.back();
                          //                 },
                          //                 color: AppTheme.radioButtonColor,
                          //                 titleColor: AppTheme.white,
                          //                 borderColor: AppTheme.radioButtonColor,
                          //               ),
                          //
                          //             ],
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // );
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
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
                                      width: width * 0.29,
                                      height: height * 0.15,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade200,
                                        image: DecorationImage(
                                            image: AssetImage(
                                               controller.cancelOrderData[index].images.toString()),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.cancelOrderData[index].title.toString(),
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              controller.cancelOrderData[index].items.toString(),
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
                                                  Text(
                                                    controller.cancelOrderData[index].amount.toString(),
                                                    style: GoogleFonts.poppins(
                                                        color: AppTheme.radioButtonColor,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 12,
                                                            vertical: 2),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.red),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Center(
                                                      child: Text(
                                                        "Canceled",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
