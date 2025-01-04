enum AppRoutes {
  root,
  login,
  signupName,
  signupPhone,
  verifyCode,
  home,
  bottomNav,
  booking,
  bookingAbout,
  bookAppointment,
  bookSuccess,
  order,
profile,favoriteRestaurants,
address, profileAddress, language, notification, security,
helpCenter


}

extension AppRouteExtension on AppRoutes {
  static const appRoutes = {
    AppRoutes.root: "/",
    AppRoutes.login: "/Login",
    AppRoutes.signupName:"/Signup_Name_Screen",
    AppRoutes.signupPhone:"/Signup_Phone_Screen",
    AppRoutes.verifyCode:"/VerifyCode",
    AppRoutes.home:"/HomeScreen",
    AppRoutes.bottomNav:"/BottomNavScreen",
    AppRoutes.booking:"/BookingScreen",
    AppRoutes.bookingAbout:"/BookingAboutScreen",
    AppRoutes.bookAppointment:"/BookingAppointmentScreen",
    AppRoutes.bookSuccess:"/BookingSuccessScreen",
    AppRoutes.order:"/OrderScreen",
    AppRoutes.profile: "/ProfileScreen",
    AppRoutes.favoriteRestaurants: "/FavoriteRestaurantsScreen",
    AppRoutes.address: "/AddressScreen",
    AppRoutes.profileAddress: "/ProfileAddressScreen",
    AppRoutes.language: "/LanguageScreen",
    AppRoutes.notification: "/NotificationScreen",
    AppRoutes.security: "/SecurityScreen",
    AppRoutes.helpCenter: "/HelpCenterScreen",

  };
  String get toName => appRoutes[this]!;
}