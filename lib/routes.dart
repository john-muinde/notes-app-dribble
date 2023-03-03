import 'package:daystar_login/views/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'views/screens/auth/login_screen.dart';

class Routes {
  static const String login = "login";
  static const String sign_up = "sign_up";

  static Route<dynamic> controller(RouteSettings settings) {
    switch (settings.name) {
      case sign_up:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case login:
        return MaterialPageRoute(builder: (context) => const LogInScreen());
      default:
        throw ('This route name does not exist');
    }
  }
}
