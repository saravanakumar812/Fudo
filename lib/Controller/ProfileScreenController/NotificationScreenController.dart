import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NotificationScreenController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  RxBool generalNotification = RxBool(false);
  RxBool sound = RxBool(false);
  RxBool vibrate = RxBool(false);
  RxBool specialOffers = RxBool(false);
  RxBool promoDiscount = RxBool(false);
  RxBool payments = RxBool(false);
  RxBool cashback = RxBool(false);
  RxBool appUpdates = RxBool(false);
  RxBool newServiceAvailable = RxBool(false);
  RxBool newTipsAvailable = RxBool(false);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}