import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/Controller/BookingsController/BookAppointmentScreenController.dart';
import 'package:fudo/Utils/theme.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/forms.dart';
import '../../Utils/AppPreference.dart';
import '../../Utils/custom_image_view.dart';
import '../../Utils/image_constant.dart';

class BookAppointmentScreen extends GetView<BookAppointmentScreenController> {
  const BookAppointmentScreen({super.key});


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
    BookAppointmentScreenController controller =
    Get.put(BookAppointmentScreenController());
    return Scaffold(
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 3),
          child: Container(
            height: 50,
            width: width,
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
                  // Get.toNamed(AppRoutes.home.toName);
                  controller.openCheckOut();
                },
                child: Text(
                  "Check Out",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )),
          ),
        ),
      ],
      backgroundColor: AppTheme.appColor,

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
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildStepsSection(),
          _buildAppointmentBookingSection(context),


        ],
      ),
    );
  }

  Widget _buildStepsSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            Colors.grey.shade50.withOpacity(0),
            Colors.grey.shade50,
            Colors.grey.shade50.withOpacity(0)
          ],
        ),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkPrimary1,
                    height: 24,
                    width: 26,
                    margin: EdgeInsets.only(left: 30),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Book Appointment".tr,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconsBoldGray1001,
                  height: 24,
                  width: 26,
                  margin: EdgeInsets.only(left: 8),
                ),
                SizedBox(height: 6),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Payment".tr,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconsBoldGray1001,
                  height: 24,
                  width: 26,
                  margin: EdgeInsets.only(right: 36),
                ),
                SizedBox(height: 6),
                Text(
                  "Booking Successfully".tr,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppointmentBookingSection(context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    BookAppointmentScreenController controller =
    Get.put(BookAppointmentScreenController());
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Select Date".tr,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 14),
          SizedBox(
            width: double.maxFinite,
            child: TextInput(
                onPressed: () {
                  controller.selectDate(context);
                },
                controller: controller.currentDateController,
                height: 100,
                isReadOnly: true,
                label: "Date*",
                onTextChange: (text) {

                },
                textInputType: TextInputType.phone,
                textColor: Color(0xCC252525),
                hintText: "Select Date",
                sufficIcon: Icon(
                  Icons.calendar_month,
                ),
                obscureText: true),
          ),
          SizedBox(height: 10),

          SizedBox(height: 24),
          Container(
            width: width, height: height * 0.25,
            child: ListView.builder(
                itemCount: controller.selectedResponseData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.1,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image:
                                AssetImage( controller.selectedResponseData[index].images
                                    .toString()),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        controller.selectedResponseData[index].title
                            .toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      Text(
                        controller.selectedResponseData[index].subtitle
                            .toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Select Time".tr,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: TextInput(
                onPressed: () {
                  controller.showBottomTimePicker(
                      context, controller.timeSelectionController);
                },
                controller: controller.timeSelectionController,
                height: 100,
                isReadOnly: true,
                label: "Select Time*",
                onTextChange: (text) {

                },
                textInputType: TextInputType.phone,
                textColor: Color(0xCC252525),
                hintText: "Select Time",
                sufficIcon: Icon(
                    Icons.access_time_filled_outlined
                ),
                obscureText: true),
          ),

        ],
      ),
    );
  }

}
