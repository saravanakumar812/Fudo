import 'package:fudo/Binding/BookingsBinding/BookAppointmentScreenBinding.dart';
import 'package:fudo/Binding/BookingsBinding/BookingBinding.dart';
import 'package:fudo/Binding/BottomNavBarBinding/BottomNavBarBiinding.dart';
import 'package:fudo/Binding/HomeScreenBinding/HomeScreenBinding.dart';
import 'package:fudo/Binding/LoginScreensBindings/Signup_with_Name_Screen_Binding.dart';
import 'package:fudo/Binding/LoginScreensBindings/Signup_with_Phone_Screen_Binding.dart';
import 'package:fudo/Binding/LoginScreensBindings/VerifyCodeScreenBinding.dart';
import 'package:fudo/Binding/OrderScreenBinding/OrderScreenBinding.dart';
import 'package:fudo/UI/Bookings/BookAppintmentScreen.dart';
import 'package:fudo/UI/Bookings/BookingScreens.dart';
import 'package:fudo/UI/Bookings/BookingSuccessfullyScreen.dart';
import 'package:fudo/UI/HomeScreen/HomeScreen.dart';
import 'package:fudo/UI/LoginScreens/VerifyCodeScreen.dart';
import 'package:fudo/UI/OrderScreen/OrderScreen.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Binding/BookingsBinding/BookingAboutScreenBinding.dart';
import '../Binding/BookingsBinding/BookingSuccessFullyBindingScreen.dart';
import '../Binding/LoginScreensBindings/LoginScreenBinding.dart';
import '../Binding/ProfileScreenBindings/AddressScreenBindings.dart';
import '../Binding/ProfileScreenBindings/FavoriteRestaurantsScreenBindings.dart';
import '../Binding/ProfileScreenBindings/HelpCenterScreenBindings.dart';
import '../Binding/ProfileScreenBindings/LanguageScreenBindings.dart';
import '../Binding/ProfileScreenBindings/NotificationScreenBindings.dart';
import '../Binding/ProfileScreenBindings/ProfileScreenBindings.dart';
import '../Binding/ProfileScreenBindings/SecurityScreenBindings.dart';
import '../UI/Bookings/BookingAboutScreen.dart';
import '../UI/BottomNavigationBar/BottomNavBar.dart';
import '../UI/LoginScreens/LoginScreen.dart';
import '../UI/LoginScreens/Signup_with_Name_Screen.dart';
import '../UI/LoginScreens/Signup_with_Phone_Screen.dart';

import '../UI/ProfileScreen/AddressScreen.dart';
import '../UI/ProfileScreen/FavoriteRestaurantsScreen.dart';
import '../UI/ProfileScreen/HelpCenterScreen.dart';
import '../UI/ProfileScreen/LanguageScreen.dart';
import '../UI/ProfileScreen/NotificationScreen.dart';
import '../UI/ProfileScreen/ProfileAddressScreen.dart';
import '../UI/ProfileScreen/ProfileScreen.dart';
import '../UI/ProfileScreen/SecurityScreen.dart';
import 'App_Routes.dart';

class AppPages {
  static var list = [

    GetPage(
        name: AppRoutes.Login.toName,
        page: () => const LoginScreen(),
        binding: LoginScreenBinding()),
    GetPage(
        name: AppRoutes.signupName.toName,
        page: () => const SignupNameScreen(),
        binding: SignupNameScreenBinding()),
    GetPage(
        name: AppRoutes.signupPhone.toName,
        page: () => const SignupPhoneScreen(),
        binding: SignupPhoneScreenBinding()),
    GetPage(
        name: AppRoutes.verifyCode.toName,
        page: () => const VerifyCodeScreen(),
        binding: VerifyCodeScreenBinding()),
    GetPage(
        name: AppRoutes.home.toName,
        page: () => const HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: AppRoutes.bottomNav.toName,
        page: () => BottomNavBarScreen(),
        binding: BottomNavBarScreenBinding()),
    GetPage(
        name: AppRoutes.booking.toName,
        page: () => const BookingScreen(),
        binding: BookingScreenBinding()),
    GetPage(
        name: AppRoutes.bookingAbout.toName,
        page: () => const BookingAboutScreen(),
        binding: BookingAboutScreenBinding()),
    GetPage(
        name: AppRoutes.bookAppointment.toName,
        page: () => const BookAppointmentScreen(),
        binding: BookAppointmentScreenBinding()),
    GetPage(
        name: AppRoutes.bookSuccess.toName,
        page: () => const BookingSuccessfullyScreen(),
        binding: BookingSuccessfullyScreenBinding()),
    GetPage(
        name: AppRoutes.order.toName,
        page: () => const OrderScreen(),
        binding: OrderScreenBinding()),
    GetPage(
        name: AppRoutes.profile.toName,
        page: () => const ProfileScreen(),
        binding: ProfileScreenScreenBindings()),
    GetPage(
        name: AppRoutes.favoriteRestaurants.toName,
        page: () => const FavoriteRestaurantsScreen(),
        binding: FavoriteRestaurantsScreenScreenBindings()),
    GetPage(
        name: AppRoutes.address.toName,
        page: () => const AddressScreen(),
        binding: AddressScreenBindings()),
    GetPage(
        name: AppRoutes.profileAddress.toName,
        page: () => const ProfileAddressScreen(),
        binding: ProfileScreenScreenBindings()),
    GetPage(
        name: AppRoutes.language.toName,
        page: () => const LanguageScreen(),
        binding: LanguageScreenBindings()),
    GetPage(
        name: AppRoutes.notification.toName,
        page: () => const NotificationScreen(),
        binding: NotificationScreenBindings()),
    GetPage(
        name: AppRoutes.security.toName,
        page: () => const SecurityScreen(),
        binding: SecurityScreenBindings()),
    GetPage(
        name: AppRoutes.helpCenter.toName,
        page: () => const HelpCenterScreen(),
        binding: HelpCenterScreenBindings()),

  ];
}