import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/ProfileScreenController/FavoriteRestaurantScreenController.dart';

class FavoriteRestaurantsScreen extends GetView<FavoriteRestaurantsScreenController> {
  const FavoriteRestaurantsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    FavoriteRestaurantsScreenController controller = Get.put(FavoriteRestaurantsScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Favorite Restaurants",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Image.asset("assets/icons/Profile_icon.png"),
          SizedBox(
            width: width * .05,
          )
        ],
      ),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: controller.tableMenuData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  child: Container(
                    height: height * 0.17,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                      BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10),
                          child: Container(
                            width: width * 0.29,
                            height: height * 0.14,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              image: DecorationImage(
                                  image: AssetImage(
                                      controller
                                          .tableMenuData[
                                      index]
                                          .images
                                          .toString()),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.circular(
                                  15),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller
                                    .tableMenuData[index]
                                    .title
                                    .toString(),
                                style:
                                GoogleFonts.poppins(
                                    color:
                                    Colors.black,
                                    fontSize: 18,
                                    fontWeight:
                                    FontWeight
                                        .w700),
                              ),
                              Row(
                                children: [
                                  Text(
                                    controller
                                        .tableMenuData[
                                    index]
                                        .textOne
                                        .toString(),
                                    style: GoogleFonts
                                        .poppins(
                                        color: Colors
                                            .black,
                                        fontSize: 15,
                                        fontWeight:
                                        FontWeight
                                            .w400),
                                  ),
                                  Image.asset(
                                      "assets/icons/start_icon.png"),
                                  Text(
                                    controller
                                        .tableMenuData[
                                    index]
                                        .textTwo
                                        .toString(),
                                    style: GoogleFonts
                                        .poppins(
                                        color: Colors
                                            .black,
                                        fontSize: 15,
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
                                            width: 10),
                                        Text(
                                          controller
                                              .tableMenuData[
                                          index]
                                              .kiloMeter
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
                                    Image.asset(
                                        "assets/icons/Heart_fav.png"),
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
      ],
    ),);
  }
}
