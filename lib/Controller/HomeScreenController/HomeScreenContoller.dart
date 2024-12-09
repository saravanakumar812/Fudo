


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Modal/HomeResponseModal.dart';

class HomeScreenController extends GetxController{
  TextEditingController searchController = TextEditingController();
  RxList<HomeScreenResponseModel> homeScreenData = RxList();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    homeScreenView();
  }

  homeScreenView() {
    HomeScreenResponseModel card1 = HomeScreenResponseModel();
    HomeScreenResponseModel card2 = HomeScreenResponseModel();
    HomeScreenResponseModel card3 = HomeScreenResponseModel();
    HomeScreenResponseModel card4 = HomeScreenResponseModel();
    HomeScreenResponseModel card5 = HomeScreenResponseModel();

    card1.title = "Book a Table".tr;

    card1.images = "assets/images/Percentage_offer.png";
    homeScreenData.add(card1);

    card2.title = "Book a Cook";

    card2.images = "assets/images/download.jpeg";
    homeScreenData.add(card2);

    card3.title = "Book a Online Cook";

    card3.images = "assets/images/Extra_offers.jpeg";
    homeScreenData.add(card3);

    card4.title = "Event";

    card4.images = "assets/images/train.png";
    homeScreenData.add(card4);

    card5.title = "Orders";

    card5.images = "assets/images/Gift_Card.jpg";
    homeScreenData.add(card5);
  }
}