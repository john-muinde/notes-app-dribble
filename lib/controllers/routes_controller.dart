import 'package:daystar_login/views/screens/auth/sign_up_screen.dart';
import 'package:daystar_login/views/screens/home/landing_screen.dart';
import 'package:get/get.dart';

import '../views/screens/auth/login_screen.dart';

class Routes {
  static const String login = "/login";
  static const String sign_up = "/signup";
  static const String landingScreen = "/landing_screen";

  static final routes = [
    GetPage(name: login, page: () => LogInScreen()),
    GetPage(name: sign_up, page: () => SignUpScreen()),
    GetPage(name: landingScreen, page: () => LandingScreen()),
  ];
}
