import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/AppRoutes/App_Routes.dart';
import 'package:fudo/Controller/LoginScreensController/Signup_with_Phone_Screen_Controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/theme.dart';

class SignupPhoneScreen extends GetView<SignupPhoneScreenController> {
  const SignupPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SignupPhoneScreenController controller =
        Get.put(SignupPhoneScreenController());
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
              "Your Phone!",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              "You will receive a code for phone verification number",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),

          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(
                  color: AppTheme.screenBackground,
                ),
              ),
              child: Row(children: [
                Container(
                  width: 100,
                  height: 40,
                  // color: AppTheme.white,
                  child: CountryCodePicker(
                    padding: EdgeInsets.zero,
                    textStyle: TextStyle(
                        color: AppTheme.appBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                    searchStyle: TextStyle(color: Colors.black),
                    dialogTextStyle: TextStyle(color: Colors.black),
                    hideMainText: false,
                    showFlagMain: true,
                    showFlag: true,
                    flagWidth: 40,
                    initialSelection: 'IN',
                    hideSearch: false,
                    showCountryOnly: false,
                    showFlagDialog: true,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    enabled: true,
                  ),
                ),
                // SizedBox(
                //   width: 10,
                // ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 30, color: AppTheme.appBlack),
                ),
                Expanded(
                    child: Container(
                  //padding: EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: controller.phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Enter your mobile number".tr,
                      hintStyle: const TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                      contentPadding: const EdgeInsets.only(left: 20),
                    ),
                    //  border: OutlineInputBorder(
                    //   borderSide:
                    //   BorderSide(width: 2, color: AppTheme.primaryColor),
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    //     ),
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        decorationThickness: 0,
                        color: AppTheme.screenBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ))
              ]),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20, ),
          //   child: SizedBox(
          //     width: width,
          //     height: height * 0.07,
          //     child: TextFormField(
          //       keyboardType: TextInputType.number,
          //       controller: controller.phoneNumberController,
          //       decoration: InputDecoration(
          //           hintText: "Enter Your Phone NUmber",
          //           hintStyle: GoogleFonts.poppins(
          //               color:  Colors.black ,
          //               fontSize: 13,
          //               fontWeight: FontWeight.w300),
          //           contentPadding: EdgeInsets.only(left: 10),
          //           enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.grey,
          //               width: 0.5,
          //             ),
          //             borderRadius: BorderRadius.circular(25),
          //           ),
          //           focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.grey,
          //               width: 0.5,
          //             ),
          //             borderRadius: BorderRadius.circular(25),
          //           ),
          //           errorBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.red,
          //               width: 0.5,
          //             ),
          //             borderRadius: BorderRadius.circular(25),
          //           ),
          //           prefixIcon: Icon(Icons.person_2_outlined, color:  AppTheme.radioButtonColor,)
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              // Wrap with Obx to make it reactive
              () => CheckboxListTile(
                // checkColor: AppTheme.radioButtonColor,
                activeColor: AppTheme.radioButtonColor,
                value: controller.isChecked.value,
                selected: controller.isChecked.value,
                contentPadding: EdgeInsets.zero,
                onChanged: (v) {
                  controller.isChecked.value =
                      v ?? false; // Update the isChecked state
                },
                title: Text(
                  'Agree with Terms and Privacy',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
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
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
