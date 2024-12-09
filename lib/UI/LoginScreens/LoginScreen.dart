import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudo/Controller/LoginScreensController/LoginScreenController.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Components/theme.dart';
import '../../Utils/AppPreference.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    LoginScreenController controller = Get.put(LoginScreenController());

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Login_3.jpg"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: height * 0.43,
              child: Container(
                width: width,
                height: height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5),
                      child: Text(
                        "Welcome Back",
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
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          decoration: InputDecoration(
                              hintText: "Enter Your Email id",
                              hintStyle: GoogleFonts.poppins(
                                  color: Colors.black,
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
                              prefixIcon: Icon(
                                Icons.email,
                                color: AppTheme.radioButtonColor,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5),
                      child: Text(
                        "Password",
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
                          child: Obx(
                            () => TextFormField(
                              obscureText: controller.pass.value,
                              keyboardType: TextInputType.visiblePassword,
                              controller: controller.passwordController,
                              decoration: InputDecoration(
                                hintText: "Enter Your Password",
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                                contentPadding: EdgeInsets.all(10),
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
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                prefixIcon: Icon(
                                  Icons.key,
                                  color: AppTheme.radioButtonColor,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    controller.pass.value =
                                        !controller.pass.value;
                                  },
                                  child: Icon(
                                      controller.pass.value
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: AppTheme.radioButtonColor),
                                ),
                              ),
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: Text(
                            "Forgot Password ?",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 3),
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
                              double latitude = double.tryParse(controller.currentLatitudeController.toString()) ?? 0.0;
                              double longitude = double.tryParse(controller.currentLongitudeController.toString()) ?? 0.0;
                              AppPreference().updateLatitude(latitude);
                              AppPreference().updateLongitude(longitude);
                              AppPreference().updateAddress(
                                  (controller.address.toString()));
                              // Get.toNamed(AppRoutes.bottomNav.toName);
                              Get.toNamed(AppRoutes.bottomNav.toName);
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.signupName.toName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: Text(
                              "Don't have an account ? Register",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
