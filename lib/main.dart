import 'package:flutter/material.dart';

import 'models/constants.dart';

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
      theme: ThemeData(
        primarySwatch: MaterialConstants.primaryWhite,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Constants.primaryWhite),
          displayMedium: TextStyle(color: Constants.primaryWhite),
          bodyMedium: TextStyle(color: Constants.primaryWhite),
          titleMedium: TextStyle(color: Constants.primaryWhite),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundBlack,
        body: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const SignUpScreen(),
        ),
      ),
    );
  }
}
