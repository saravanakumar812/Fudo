import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/BookingsController/BookingSuccessfullyControllerScreen.dart';
import '../../Utlis/theme.dart';

class BookingSuccessfullyScreen extends GetView<BookingSuccessfullyScreenController> {
  const BookingSuccessfullyScreen({super.key});


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
    BookingSuccessfullyScreenController controller =
    Get.put(BookingSuccessfullyScreenController());
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: width,
                    height: height * 0.4,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          offset: Offset(0, 2), // Horizontal and vertical offset
                          blurRadius: 4, // Blurring effect
                          spreadRadius: 1, // How much the shadow spreads
                        ),
                      ],
            color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.3,
                    height: height * 0.15,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image:
                            AssetImage( "assets/icons/CorrectIcon.png"),

                            fit: BoxFit.cover,)),
                    child: Center(
                      child: Image.asset("assets/icons/TrueIcon.png"),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "Booking Confirmed",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  // SizedBox(
                  //   height: height * 0.02,
                  // ),
                  Text(
                    "Your table has been booked",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 3),
                    child: Container(
                      height: 50,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: AppTheme.radioButtonColor,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              )),
                          onPressed: () {

                          },
                          child: Text(
                            "Done",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),

                ],
              ),
            ),
          ) ,
        ),
      ),
    );
  }
}
