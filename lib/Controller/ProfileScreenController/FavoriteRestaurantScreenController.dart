import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Modal/RestaurantsListModal.dart';

class FavoriteRestaurantsScreenController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  RxList<RestaurantsResponseModel> tableMenuData = RxList();
  RxBool vegSwitchValue = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    restaurantListView();
  }
  restaurantListView(){
    RestaurantsResponseModel title1 = RestaurantsResponseModel();
    RestaurantsResponseModel title2 = RestaurantsResponseModel();
    RestaurantsResponseModel title3 = RestaurantsResponseModel();

    title1.title = "The Breakfast Club";
    title1.textOne = "1.4 km | ";
    title1.textTwo = "4.0 (1.7k)";
    title1.kiloMeter = "\$2.00";
    title1.images = "assets/images/TableMenu.png";
    tableMenuData.add(title1);

    title2.title = "Custard’s Last Stand";
    title2.textOne = "1.6 km | ";
    title2.textTwo = "3.8 (1.2k)";
    title2.kiloMeter = "\$2.50";
    title2.images = "assets/images/TableMenuTwo.png";
    tableMenuData.add(title2);

    title3.title = "Planet of the Salad";
    title3.textOne = "1.8 km | ";
    title3.textTwo = "4.5 (2.2k)";
    title3.kiloMeter = "\$3.00";
    title3.images = "assets/images/TableMenuThree.png";
    tableMenuData.add(title3);


  }
}