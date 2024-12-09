

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../Modal/CooksList.dart';
import '../../Modal/HomeResponseModal.dart';
import '../../Modal/OnlineCookList.dart';
import '../../Modal/RestaurantsListModal.dart';
import '../../Utlis/AppPreference.dart';

class BookingScreenController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  RxList<HomeScreenResponseModel> homeScreenData = RxList();
  RxList<RestaurantsResponseModel> restaurantData = RxList();
  RxList<CookResponseModal> cooksData = RxList();
  RxList<OnlineCookResponseModal> onlineCooksData = RxList();
  RxBool vegSwitchValue = RxBool(false);
  late GoogleMapController googleMapController;
  var initialPosition =  LatLng( AppPreference().getLatitude, AppPreference().getLongitude).obs;
  // Razorpay razorpay = Razorpay();
  var infoWindowText = 'Click the map to get Lat/Lng!'.obs;
  RxString address= RxString("");
  var pass = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    homeScreenView();
    determinePosition();
    restaurantsList();
    cooksListList();
    onlineCooksListList();
  }
  homeScreenView() {
    HomeScreenResponseModel card1 = HomeScreenResponseModel();
    HomeScreenResponseModel card2 = HomeScreenResponseModel();
    HomeScreenResponseModel card3 = HomeScreenResponseModel();
    HomeScreenResponseModel card4 = HomeScreenResponseModel();
    HomeScreenResponseModel card5 = HomeScreenResponseModel();

    card1.title = "Book a Table".tr;
    card1.images = "assets/icons/Bed.png";
    homeScreenData.add(card1);

    card2.title = "Book a Cook";
    card2.images = "assets/icons/chef-hat.png";
    homeScreenData.add(card2);

    card3.title = "Online Cook";
    card3.images = "assets/icons/chef.png";
    homeScreenData.add(card3);

    card4.title = "Event";
    card4.images = "assets/icons/party.png";
    homeScreenData.add(card4);

    card5.title = "Orders";
    card5.images = "assets/icons/shopping-cart.png";
    homeScreenData.add(card5);
  }
  restaurantsList() {
    RestaurantsResponseModel card1 = RestaurantsResponseModel();
    RestaurantsResponseModel card2 = RestaurantsResponseModel();
    RestaurantsResponseModel card3 = RestaurantsResponseModel();


    card1.title = "Lotus Pub".tr;
    card1.images = "assets/images/Mask.png";
    card1.textOne = "J.P.Nagar | ";
    card1.textTwo = "4.0 (1.7k)";
    card1.kiloMeter = "2.4 Km";
    restaurantData.add(card1);

    card2.title = "Lotus Pub";
    card2.images = "assets/images/MaskTwo.png";
    card2.textOne = "BTM 3rd Stg ";
    card2.textTwo = "3.8 (368)";
    card2.kiloMeter = "2.4 Km";
    restaurantData.add(card2);

    card3.title = "Online Cook";
    card3.images = "assets/images/MaskThree.png";
    card3.textOne = "Jayanagar ";
    card3.textTwo = "4.5 (2.2k)";
    card3.kiloMeter = "2.4 Km";
    restaurantData.add(card3);

  }
  cooksListList() {
    CookResponseModal card1 = CookResponseModal();
    CookResponseModal card2 = CookResponseModal();
    CookResponseModal card3 = CookResponseModal();


    card1.title = "John Xavier".tr;
    card1.images = "assets/images/CookOne.png";
    card1.textOne = "Italian";
    card1.textTwo = "4.2 (345)";
    card1.kiloMeter = "0.4 Km";
    cooksData.add(card1);

    card2.title = "Geeta";
    card2.images = "assets/images/CookTwo.png";
    card2.textOne = "Indian";
    card2.textTwo = "3.8 (368)";
    card2.kiloMeter = "4.2 Km";
    cooksData.add(card2);

    card3.title = "The Daily Grind";
    card3.images = "assets/images/CookThree.png";
    card3.textOne = "Multi-Cuisine ";
    card3.textTwo = "4.5 (2.2k)";
    card3.kiloMeter = "2.4 Km";
    cooksData.add(card3);

  }
  onlineCooksListList() {
    OnlineCookResponseModal card1 = OnlineCookResponseModal();
    OnlineCookResponseModal card2 = OnlineCookResponseModal();
    OnlineCookResponseModal card3 = OnlineCookResponseModal();


    card1.title = "John Xavier".tr;
    card1.images = "assets/images/CookOne.png";
    card1.textOne = "Italian";
    card1.textTwo = "4.2 (345)";
    card1.kiloMeter = "0.4 Km";
    onlineCooksData.add(card1);

    card2.title = "Karthikeyan";
    card2.images = "assets/images/OnlineCookOne.png";
    card2.textOne = "Indian";
    card2.textTwo = "3.8 (368)";
    card2.kiloMeter = "4.2 Km";
    onlineCooksData.add(card2);

    card3.title = "The Daily Grind";
    card3.images = "assets/images/CookThree.png";
    card3.textOne = "Multi-Cuisine ";
    card3.textTwo = "4.5 (2.2k)";
    card3.kiloMeter = "2.4 Km";
    onlineCooksData.add(card3);

  }

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
    // googleMapController.animateCamera(CameraUpdate.newLatLng(initialPosition.value));

  }
  Future<void> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are disabled, show a toast message
      Fluttertoast.showToast(
          msg: 'Location services are disabled. Please enable them.');
      return; // You may want to handle this case differently based on your app's logic
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      var status = await Permission.location.request();
      if (status == PermissionStatus.denied) {
        Fluttertoast.showToast(msg: 'Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(
          msg:
          'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }
    var positions = await Geolocator.getCurrentPosition();
    var accuracy = await Geolocator.getLocationAccuracy();
    print('Accuracy: $accuracy');
    print('Latitude: ${positions.latitude}');
    print('Longitude: ${positions.longitude}');
    // currentLongitudeController.value = positions.longitude.toString();
    // currentLatitudeController.value = positions.latitude.toString();
    // setMarker((positions.latitude), positions.longitude);
  }

  Future<void> setMarker(LatLng value) async {
    initialPosition.value = value;
    List<Placemark> result = await placemarkFromCoordinates(value.latitude, value.longitude);
    print(value.latitude);
    print(value.longitude);
    if (result.isNotEmpty) {
      address.value = '${result[0].name}, ${result[0].locality} ${result[0].administrativeArea} , ${result[0].postalCode}';
      // userDataProvider.setLatitude(value.latitude.toString());
      // userDataProvider.setLongitude(value.longitude.toString());
      // userDataProvider.SetSelectedLocation(address.value);
      // localeAddress.value = ' ${result[0].locality},${result[0].administrativeArea},${result[0].postalCode} ';
      print("Address ${address.value}");
    }

    Fluttertoast.showToast(msg: '📍' + address.value);
  }
}