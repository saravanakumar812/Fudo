

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Modal/OrderResponseModal.dart';

class OrderScreenController extends GetxController with GetSingleTickerProviderStateMixin {

  TextEditingController phoneNumberController = TextEditingController();
  RxBool isChecked = RxBool(false);
  late TabController nestedTabController;

  RxList<OrderResponseModel> completedOrderData = RxList();
  RxList<OrderResponseModel> cancelOrderData = RxList();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nestedTabController = new TabController(length: 3, vsync: this);
    completedOrderList();
    cancelOrderList();
  }

  completedOrderList() {
    OrderResponseModel card1 = OrderResponseModel();
    OrderResponseModel card2 = OrderResponseModel();
    OrderResponseModel card3 = OrderResponseModel();


    card1.title = "Zero Zero Noodles".tr;
    card1.items = "4 items | 2.7km".tr;
    card1.amount = "\$22.00".tr;
    card1.images = "assets/images/OrderComOne.png";
    completedOrderData.add(card1);

    card2.title = "Eats Meets West";
    card2.items = "2 items | 1.9km";
    card2.amount = "\$20.50";
    card2.images = "assets/images/OrderComTwo.png";
    completedOrderData.add(card2);

    card3.title = "Gardenica Salad";
    card3.items = "3 items | 1.9km";
    card3.amount = "\$18.50";
    card3.images = "assets/images/OrderComThree.png";
    completedOrderData.add(card3);


  }
  cancelOrderList() {
    OrderResponseModel card1 = OrderResponseModel();
    OrderResponseModel card2 = OrderResponseModel();
    OrderResponseModel card3 = OrderResponseModel();


    card1.title = "Butter Cheese Curry".tr;
    card1.items = "3 items | 1.4km".tr;
    card1.amount = "\$32.00".tr;
    card1.images = "assets/images/OrderCancelOne.png";
    cancelOrderData.add(card1);

    card2.title = "Ivory Dream";
    card2.items = "4 items | 2.5km";
    card2.amount = "\$24.00";
    card2.images = "assets/images/OrderCancelTwo.png";
    cancelOrderData.add(card2);

    card3.title = "Aqua Pops";
    card3.items = "2 items | 2.2km";
    card3.amount = "\$28.50";
    card3.images = "assets/images/OrderCancelThree.png";
    cancelOrderData.add(card3);


  }
}