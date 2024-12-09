import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled/Controllers/ProfileScreenController/SecurityScreenController.dart';

import '../../Components/Button.dart';
import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/SecurityScreenController.dart';

class SecurityScreen extends GetView<SecurityScreenController> {
  const SecurityScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SecurityScreenController controller = Get.put(SecurityScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Security",
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
    ListTile(

      title: Text("Remember me",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),),

      trailing: Obx(
            () =>
            CupertinoSwitch(
              activeColor: AppTheme.radioButtonColor,
              value: controller.rememberMe.value,
              onChanged: (value) {
                controller.rememberMe.value = value;
              },
            ),
      ),
    ),
    ListTile(

      title: Text("Face ID",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),),

      trailing: Obx(
            () =>
            CupertinoSwitch(
              activeColor: AppTheme.radioButtonColor,
              value: controller.faceID.value,
              onChanged: (value) {
                controller.faceID.value = value;
              },
            ),
      ),
    ),
    ListTile(

      title: Text("Biometric ID",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),),

      trailing: Obx(
            () =>
            CupertinoSwitch(
              activeColor: AppTheme.radioButtonColor,
              value: controller.biometricID.value,
              onChanged: (value) {
                controller.biometricID.value = value;
              },
            ),
      ),
    ),
    ListTile(

      title: Text("Google Authenticator",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),),

      trailing:Icon(Icons.arrow_forward_ios,) ,
    ),
   Padding(
      padding: const EdgeInsets.all(10.0),
      child: AppButton(
        width: width,
        height: 60,
        title: 'Change PIN',
        fontSize: 20,
        fontWeight: FontWeight.w800,
        onPressed: () {
          Get.back();
        },
        color: AppTheme.liteBlue3,
        titleColor: AppTheme.radioButtonColor,
        borderColor: AppTheme.borderColor,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: AppButton(
        width: width,
        height: 60,
        title: 'Change Password',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        onPressed: () {
          Get.back();
        },
        color: Colors.white,
        titleColor: AppTheme.liteBlue3,
        borderColor: AppTheme.borderColor,
      ),
    ),
  ],
),
    );
  }
}
