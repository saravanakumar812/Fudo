



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Modal/RestaurantsListModal.dart';

class BookingAboutScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();
  RxList<RestaurantsResponseModel> restaurantTableData = RxList();
  RxList<RestaurantsResponseModel> cooksMenuData = RxList();
  RxList<RestaurantsResponseModel> cooksOnlineMenuData = RxList();

  RxList<RestaurantsResponseModel> todayOffersTableData = RxList();
  RxList<RestaurantsResponseModel> todayOffersCookData = RxList();
  RxList<RestaurantsResponseModel> todayOffersOnlineCookData = RxList();


  RxList<RestaurantsResponseModel> specialOffersTableData = RxList();
  RxList<RestaurantsResponseModel> specialOffersCookData = RxList();
  RxList<RestaurantsResponseModel> specialOffersOnlineCookData = RxList();

  late TabController nestedTabController;
  final List<String> images = [
    'assets/images/GalleryTableTwo.png', // Replace with actual paths to your images
    'assets/images/GalleryTableOne.png', // Replace with actual paths to your images
    'assets/images/GalleryTableThree.png', // Replace with actual paths to your images
    'assets/images/GalleryTableFour.png', // Replace with actual paths to your images
    'assets/images/GalleryTableFive.png', // Replace with actual paths to your images
    'assets/images/GalleryTableSix.png', // Replace with actual paths to your images
    'assets/images/GalleryTableSeven.png', // Replace with actual paths to your images
    'assets/images/GalleryTableEight.png', // Replace with actual paths to your images
    'assets/images/GalleryTableNine.png', // Replace with actual paths to your images


  ];

  final List<Map<String, dynamic>> reviews = [
    {
      'name': 'Akash Singh',
      'date': '03 Sept 2024',
      'rating': 5,
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'name': 'Santosh Kumar',
      'date': '12 Sept 2024',
      'rating': 4,
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'name': 'Shwetha Srivatsan',
      'date': '21 Oct 2024',
      'rating': 2,
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
    },
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nestedTabController = new TabController(length: 5, vsync: this);
    restaurantsTableList();
    todayOffersTableList();
    specialOffersTableList();

    cooksMenuList();
    todayOffersCooksList();
    specialOffersCooksList();

    onlineCooksMenuList();
    todayOffersOnlineCooksList();
    specialOffersOnlineCooksList();

  }
  @override
  void onClose() {
    nestedTabController.dispose();
    super.onClose();
  }
  restaurantsTableList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();
    RestaurantsResponseModel card4 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    restaurantTableData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    restaurantTableData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    restaurantTableData.add(card3);

    card4.title = "Custard’s Last Stand";
    card4.images = "assets/images/MenuTableThree.png";
    card4.textOne = "1.5 km | ";
    card4.textTwo = "4.9 (2.2k)";
    card4.kiloMeter = "\$2.50";
    restaurantTableData.add(card4);

  }
  cooksMenuList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    cooksMenuData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    cooksMenuData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    cooksMenuData.add(card3);

  }
  onlineCooksMenuList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    cooksOnlineMenuData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    cooksOnlineMenuData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    cooksOnlineMenuData.add(card3);

  }

  todayOffersTableList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    todayOffersTableData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    todayOffersTableData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    todayOffersTableData.add(card3);

  }
  todayOffersCooksList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    todayOffersCookData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    todayOffersCookData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    todayOffersCookData.add(card3);

  }
  todayOffersOnlineCooksList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    todayOffersOnlineCookData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    todayOffersOnlineCookData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    todayOffersOnlineCookData.add(card3);

  }


  specialOffersTableList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    specialOffersTableData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    specialOffersTableData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    specialOffersTableData.add(card3);

  }
  specialOffersCooksList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    specialOffersCookData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    specialOffersCookData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    specialOffersCookData.add(card3);

  }
  specialOffersOnlineCooksList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "The Breakfast Club".tr;
    card1.images = "assets/images/MenuTableOne.png";
    card1.textOne = "1.2 km | ";
    card1.textTwo = "4.5 (1.9k)";
    card1.kiloMeter = "\$1.50";
    specialOffersOnlineCookData.add(card1);

    card2.title = "Planet of the Salad";
    card2.images = "assets/images/MenuTableTwo.png";
    card2.textOne = "1.2 km | ";
    card2.textTwo = "4.9 (2.3k)";
    card2.kiloMeter = "\$2.00";
    specialOffersOnlineCookData.add(card2);

    card3.title = "Custard’s Last Stand";
    card3.images = "assets/images/MenuTableThree.png";
    card3.textOne = "1.5 km | ";
    card3.textTwo = "4.9 (2.2k)";
    card3.kiloMeter = "\$2.50";
    specialOffersOnlineCookData.add(card3);

  }

}