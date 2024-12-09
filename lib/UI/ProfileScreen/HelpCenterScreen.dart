import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/AppTab.dart';
import '../../Components/CommonListTile.dart';
import '../../Components/HorizontalScrollView.dart';
import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/HelpCenterScreenController.dart';

class HelpCenterScreen extends GetView<HelpCenterScreenController> {
  const HelpCenterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    HelpCenterScreenController controller = Get.put(HelpCenterScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Help Center",
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
          GetBuilder<HelpCenterScreenController>(
            builder: (controller) {
              return TabBar(
                controller: controller.nestedTabController,
                indicatorColor: Colors.teal,
                labelColor: Colors.teal,
                unselectedLabelColor: Colors.black54,
                isScrollable: false,
                indicatorWeight: 5,
                labelStyle: GoogleFonts.poppins(
                  color: Colors.teal,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
                tabs: const <Widget>[
                  Tab(text: "FAQ"),
                  Tab(text: "Contact US"),

                ],
              );
            },
          ),
          GetBuilder<HelpCenterScreenController>(
            builder: (controller) {
              return Container(
                height: height * 0.70,
                // margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TabBarView(
                  controller: controller.nestedTabController,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),

                      ),
                      child: Column(
                        children: [
                          Obx(
                                () => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: HorizontalScrollView(
                                                                children: List.generate(
                                  controller.listValues.length,
                                      (index) {
                                    var model = controller.listValues[index];
                                    return AppTab(
                                      title: model.value,
                                      isSelected:
                                      controller.selectedTabIndex.value == index,
                                      onClick: () =>
                                          controller.updateCurrentTabIndex(index),
                                    );
                                  },
                                                                ),
                                                              ),
                                ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: controller.searchController,

                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: AppTheme.radioButtonColor,
                                suffixIconColor: AppTheme.radioButtonColor,
                                suffixIcon:Icon(Icons.sort),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppTheme.radioButtonColor),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppTheme.radioButtonColor),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                hintText: 'Search',
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),

                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Customer Service",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/customer_ser_icon.png"),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Whats App",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/whatsapp.png"),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Website",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/website.png"),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Face Book",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/facebook.png"),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Twitter",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/twitter.png"),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Container(
                              width: width,
                              height: height * .07,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  Center(
                                child: CommonListTile(
                                  title: "Instagram",
                                  leadingIcon: ImageIcon(AssetImage("assets/icons/insta.png",),color: AppTheme.radioButtonColor,),


                                  onTap: () {

                                    print("Profile tapped");
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
