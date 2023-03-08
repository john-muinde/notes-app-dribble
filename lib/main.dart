import 'package:daystar_login/controllers/routes_controller.dart';
import 'package:daystar_login/models/constants.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Routes.sign_up,
      getPages: Routes.routes,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Constants.backgroundBlack,
        iconTheme: const IconThemeData(color: Constants.iconText),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Constants.primaryWhite, fontSize: 18),
          bodySmall: TextStyle(
            color: Constants.primaryWhite,
          ),
          displayLarge: TextStyle(
            color: Constants.primaryWhite,
          ),
          displayMedium: TextStyle(
            color: Constants.primaryWhite,
          ),
          displaySmall: TextStyle(
              color: Constants.mainText,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              fontSize: 30),
          titleLarge: TextStyle(
            color: Constants.primaryWhite,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
      ),
    );
  }
}
