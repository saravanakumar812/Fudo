import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled/Components/theme.dart';
// import 'package:untitled/Controllers/ProfileScreenController/ProfileScreenController.dart';
// import 'package:untitled/Routes/App_routes.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Components/CommonListTile.dart';
import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/ProfileScreenController.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ProfileScreenController controller = Get.put(ProfileScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Profile",
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
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/icons/Profile_icon.png"),

          ),
          title: Text("Saravanakumar",
            style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),),
          subtitle: Text("+916383785608"),
          trailing: Icon(Icons.edit,color: AppTheme.radioButtonColor,),
        ),
        CommonListTile(
          title: "My Favorite Restaurants",
          leadingIcon: ImageIcon(AssetImage("assets/icons/favorite_Icon.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
          Get.toNamed(AppRoutes.favoriteRestaurants.toName);
          },
        ),
        CommonListTile(
          title: "Special Offers & Promo",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Discount_icon.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            // Handle tap
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Payment Methods",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Wallet_icon.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            // Handle tap
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Profile",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Profile.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.address.toName);
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Address",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Location.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.profileAddress.toName);
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Notification",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Notification.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.notification.toName);
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Security",
          leadingIcon: ImageIcon(AssetImage("assets/icons/Sequrity.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.security.toName);
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Language",
          leadingIcon: ImageIcon(AssetImage("assets/icons/language.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.language.toName);
            print("Profile tapped");
          },
        ),
        ListTile(
          leading: ImageIcon(AssetImage("assets/icons/Show.png")),
          title: Text("Dark Mode",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),),

          trailing: Obx(
                () =>
                CupertinoSwitch(
                  activeColor: AppTheme.radioButtonColor,
                  value: controller.vegSwitchValue.value,
                  onChanged: (value) {
                    controller.vegSwitchValue.value = value;
                  },
                ),
          ),
        ),
        CommonListTile(
          title: "Help Center",
          leadingIcon: ImageIcon(AssetImage("assets/icons/help.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            Get.toNamed(AppRoutes.helpCenter.toName);
            print("Profile tapped");
          },
        ),
        CommonListTile(
          title: "Invite Friends",
          leadingIcon: ImageIcon(AssetImage("assets/icons/invite.png")),
          trailingIcon: Icons.arrow_forward_ios,
          onTap: () {
            // Handle tap
            print("Profile tapped");
          },
        ),
      ],),);

  }
}
