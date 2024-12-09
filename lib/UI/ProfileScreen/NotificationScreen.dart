import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/NotificationScreenController.dart';

class NotificationScreen extends GetView<NotificationScreenController> {
  const NotificationScreen({super.key});

   @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;
     NotificationScreenController controller = Get.put(NotificationScreenController());
     return Scaffold(
       appBar: AppBar(
         leading: GestureDetector(
             onTap:(){
               Get.back();
             },
             child: Image.asset("assets/icons/back_Icon.png")),
         leadingWidth: width * .2,
         title: Text(
           "Notification",
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

           title: Text("General Notification",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.generalNotification.value,
                   onChanged: (value) {
                     controller.generalNotification.value = value;
                   },
                 ),
           ),
         ),
         ListTile(

           title: Text("Sound",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.sound.value,
                   onChanged: (value) {
                     controller.sound.value = value;
                   },
                 ),
           ),
         ),
         ListTile(

           title: Text("Vibrate",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.vibrate.value,
                   onChanged: (value) {
                     controller.vibrate.value = value;
                   },
                 ),
           ),
         ),
         ListTile(

           title: Text("Special Offers",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.specialOffers.value,
                   onChanged: (value) {
                     controller.specialOffers.value = value;
                   },
                 ),
           ),
         ),

         ListTile(

           title: Text("Promo & Discount",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.promoDiscount.value,
                   onChanged: (value) {
                     controller.promoDiscount.value = value;
                   },
                 ),
           ),
         ),ListTile(

           title: Text("Payments",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.payments.value,
                   onChanged: (value) {
                     controller.payments.value = value;
                   },
                 ),
           ),
         ),ListTile(

           title: Text("Cashback",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.cashback.value,
                   onChanged: (value) {
                     controller.cashback.value = value;
                   },
                 ),
           ),
         ),
         ListTile(

           title: Text("App Updates",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.appUpdates.value,
                   onChanged: (value) {
                     controller.appUpdates.value = value;
                   },
                 ),
           ),
         ),ListTile(

           title: Text("New Service Available",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.newServiceAvailable.value,
                   onChanged: (value) {
                     controller.newServiceAvailable.value = value;
                   },
                 ),
           ),
         ),ListTile(

           title: Text("New Tips Available",
             style: GoogleFonts.poppins(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.w700,
             ),),

           trailing: Obx(
                 () =>
                 CupertinoSwitch(
                   activeColor: AppTheme.radioButtonColor,
                   value: controller.newTipsAvailable.value,
                   onChanged: (value) {
                     controller.newTipsAvailable.value = value;
                   },
                 ),
           ),
         ),
       ],
     ),);
  }
}
