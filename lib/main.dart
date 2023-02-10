import 'package:daystar_login/models/constants.dart';
import 'package:flutter/material.dart';

import 'views/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Constants.backgroundBlack,
        primaryTextTheme: const TextTheme(
          bodyLarge: TextStyle(color: Constants.primaryWhite),
          bodySmall: TextStyle(color: Constants.primaryWhite),
          displayLarge: TextStyle(color: Constants.primaryWhite),
          displayMedium: TextStyle(color: Constants.primaryWhite),
          titleLarge: TextStyle(color: Constants.primaryWhite),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const SignUpScreen(),
        ),
      ),
    );
  }
}
