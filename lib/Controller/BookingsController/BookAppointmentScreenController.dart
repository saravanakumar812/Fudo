


import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../AppRoutes/App_Routes.dart';
import '../../Components/forms.dart';
import '../../Modal/SelectedChefResponseModal.dart';
import '../../Utils/theme.dart';

class BookAppointmentScreenController extends GetxController{
  TextEditingController currentDateController = TextEditingController();
  TextEditingController timeSelectionController = TextEditingController();
  RxList<selectedChefResponseModel> selectedResponseData = RxList();
  Razorpay razorpay = Razorpay();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectedChefData();razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }
  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        // selectableDayPredicate: selectableDay,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: Color(0xFF455636),
              hintColor: Color(0xFF455636),
              colorScheme: ColorScheme.light(primary: Color(0xFF455636)),
            ),
            child: child!,
          );
        });
    if (picked != null) {
      currentDateController.text =
          DateFormat('dd-MM-yyyy').format(picked);
    }
  }

  showBottomTimePicker(
      BuildContext context,
      TextEditingController controller,
      ) {
    var times;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 280,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 20, width: 20),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text("Select Time",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppTheme.appBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.clear))
                      ],
                    ),
                  ),
                  Expanded(
                    child: TimePickerSpinner(
                      is24HourMode: false,
                      spacing: 30,
                      itemHeight: 37,
                      itemWidth: 60,
                      isForce2Digits: true,
                      onTimeChange: (time) {
                        times = time;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppButton2(
                        width: width * 0.45,
                        height: 40,
                        title: 'Cancel',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        onPressed: () {
                          Get.back();
                        },
                        color: Colors.white,
                        titleColor: AppTheme.bottomTabsLabelInActiveColor,
                        borderColor: AppTheme.cancelBorder,
                      ),
                      AppButton2(
                        width: width * 0.45,
                        height: 40,
                        title: 'Save ',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        onPressed: () {
                          controller.text = " ${formatDate(times, [
                            hh.trim(),
                            ':',
                            nn.trim(),
                            ':',
                            am.trim()
                          ])}";
                          Navigator.of(context).pop();
                        },
                        titleColor: Colors.black,
                        color: AppTheme.secondaryColor,
                        borderColor: AppTheme.secondaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  selectedChefData() {
    selectedChefResponseModel card1 = selectedChefResponseModel();
    selectedChefResponseModel card2 = selectedChefResponseModel();
    selectedChefResponseModel card3 = selectedChefResponseModel();
    selectedChefResponseModel card4 = selectedChefResponseModel();
    selectedChefResponseModel card5 = selectedChefResponseModel();

    card1.title = "John".tr;
    card1.subtitle = "Indian Cusine".tr;
    card1.images = "assets/images/cook 4.png";
    selectedResponseData.add(card1);

    card2.title = "Geetha";
    card2.subtitle = "Chinese Chef";
    card2.images = "assets/images/Cook 2.png";
    selectedResponseData.add(card2);

    card3.title = "Sanjeev";
    card3.subtitle = "Masterchef";
    card3.images = "assets/images/Cook 3.png";
    selectedResponseData.add(card3);

    card4.title = "Brar";
    card4.subtitle = "Baker";
    card4.images = "assets/images/Cook 1.png";
    selectedResponseData.add(card4);


  }


  void openCheckOut() {
    var options = {
      'key': 'rzp_test_y7jlqVGKmyovVX',
      'amount': 2500, //in the smallest currency sub-unit.
      'name': 'Mpfoods',
      'order_id': "", // Generate order_id using Orders API
      'description': '',
      'timeout': 300, // in seconds
      'prefill': {
        'contact': "6383785608",
        'email': ''
      },
      'external': {
        'wallets': ['paytm']
      },
      'experiments.upi_turbo': true,
    };

    try {
      razorpay.open(options);

      // log(payment);
      // print(payment);
      // debugPrint(payment);
    } catch (e) {
      debugPrint("error : e");
    }
  }
  void handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Payment Success");
    // paymentProcess(response.orderId.toString(), response.paymentId.toString(),
    //     response.signature.toString(), 1);
    // Get.offNamed(AppRoutes.bookingSuccessfullyScreen);
  }

  void handlePaymentError(PaymentFailureResponse response) {
    print("Payment Failed");
    // paymentProcess("", "", "", 0);
    Get.offNamed(AppRoutes.home.toName);
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }
}