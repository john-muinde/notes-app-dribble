import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'constants.dart';

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
                  boxContainer(
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
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
                      signUpIconsContainer(
                        child: Icons.person,
                      ),
                      signUpIconsContainer(
                        child: Icons.apple_rounded,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  textFieldWidget(label: 'Name'),
                  textFieldWidget(label: 'Name'),
                  textFieldWidget(label: 'Name'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class signUpIconsContainer extends StatelessWidget {
  final child;
  const signUpIconsContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: boxContainer(
          child: Icon(
        child,
        color: Constants.primaryWhite,
        size: 35,
      )),
    );
  }
}

class boxContainer extends StatelessWidget {
  final Widget child;
  final padding;
  final margin;
  const boxContainer(
      {super.key,
      required this.child,
      this.padding = 13.0,
      this.margin = 13.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Constants.boxGreyLight.withOpacity(1),
          width: 4.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: child,
    );
  }
}

var linearGradient = const LinearGradient(
  colors: [
    Constants.buttonGradientLeft,
    Constants.buttonGradientRight,
  ],
);

Widget textFieldWidget({label, controller, password = false, props}) {
  var suffixIcon = password
      ? IconButton(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {},
        )
      : null;

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Name',),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: "Resevior Name",
          labelStyle: TextStyle(color: Constants.boxGreyLighter, fontSize: 17),
          fillColor: Colors.white,
          border: GradientOutlineInputBorder(
            gradient: linearGradient,
            width: 3,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    ],
  );
}
