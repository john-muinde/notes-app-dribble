import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'models/constants.dart';
import 'views/components/boxContainer.dart';
import 'views/components/components.dart';
import 'views/components/textField.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BoxContainer(
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Constants.primaryWhite,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Sign up',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Sign up with one of the following options.',
                    style: TextStyle(
                      color: Constants.insideLabelText,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      SignUpIconsContainer(
                        child: Icons.person,
                      ),
                      SignUpIconsContainer(
                        child: Icons.apple_rounded,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  TextFieldWidget(
                    label: 'Name',
                    text: 'Jane Doe',
                  ),
                  TextFieldWidget(
                    label: 'Email',
                    text: 'tim@apple.com',
                  ),
                  TextFieldWidget(
                    label: 'Password',
                    text: 'Pick a strong Password',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
