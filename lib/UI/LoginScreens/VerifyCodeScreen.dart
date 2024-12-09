
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/Controller/LoginScreensController/VerifyCodeScreenController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Components/OTPInput.dart';
import '../../Utils/theme.dart';

class VerifyCodeScreen extends GetView<VerifyCodeScreenController> {
  const VerifyCodeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    VerifyCodeScreenController controller =
    Get.put(VerifyCodeScreenController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: width * 0.1,
              height: height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              "Verify Code",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              "Please enter the 4 digit security code we just sent you at 987-654-xxxx",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: height * 0.05,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Container(
              color: AppTheme.white,
              width: width ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OtpInput(
                    controller: controller.fieldOne,
                    autoFocus: false,
                  ), // auto focus
                  OtpInput(controller: controller.fieldTwo, autoFocus: false),
                  OtpInput(
                      controller: controller.fieldThree, autoFocus: false),
                  OtpInput(
                    controller: controller.fieldFour,
                    autoFocus: false,
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:(){
                  Get.toNamed(AppRoutes.signupPhone.toName);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 5),
                  child: Text(
                    "Don’t receive code? Resend code",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.03,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
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
                    Get.toNamed(AppRoutes.verifyCode.toName);
                  },
                  child: Text(
                    "Verified",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),

        ],
      )
    );
  }
}
