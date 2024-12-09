import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/Controller/LoginScreensController/Signup_with_Name_Screen_Controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Utils/theme.dart';

class SignupNameScreen extends GetView<SignupNameScreenController> {
  const SignupNameScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SignupNameScreenController  controller =Get.put(SignupNameScreenController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 5),
            child: Text(
              "Sign Up",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 5),
            child: Text(
              "Please enter your login information below to access your account",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 5),
            child: Text(
              "User Name",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: width,
              height: height * 0.07,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: controller.nameController,
                decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: GoogleFonts.poppins(
                        color:  Colors.black ,
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                    contentPadding: EdgeInsets.only(left: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined, color:  AppTheme.radioButtonColor,)
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.05,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
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
          SizedBox(height: height * 0.01,),
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
                    "Sign up with phone number",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
