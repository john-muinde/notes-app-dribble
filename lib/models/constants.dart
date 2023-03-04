import 'package:flutter/material.dart';

extension Constants on Color {
  static const linearGradient = LinearGradient(
    colors: [
      Constants.buttonGradientLeft,
      Constants.buttonGradientRight,
    ],
  );
  static const Color primaryWhite = Color.fromARGB(255, 251, 251, 251);
  static const Color purpleGradient = Color.fromARGB(255, 185, 0, 255);
  static const Color boxGrey = Color.fromARGB(255, 23, 23, 23);
  static const Color boxGreyLight = Color.fromARGB(255, 61, 61, 61);
  static const Color boxGreyLighter = Color.fromARGB(255, 137, 137, 137);
  static const Color backgroundBlack = Color.fromARGB(255, 16, 16, 16);
  static const Color labelText = Color.fromARGB(255, 103, 103, 103);
  static const Color insideLabelText = Color.fromARGB(255, 119, 119, 119);
  static const Color buttonGradientLeft = Color.fromARGB(255, 182, 21, 221);
  static const Color buttonGradientRight = Color.fromARGB(255, 206, 40, 162);
  static const Color appText = Color.fromARGB(255, 107, 107, 107);
  static const Color mainText = Color.fromARGB(255, 212, 212, 212);
  static const Color mainText2 = Color.fromARGB(255, 250, 250, 250);

  //!Landing pages
  static const Color sliderBackground = Color(0xff414052);
  static const Color iconBackground = Color(0xffac6dde);
  static const Color iconBackground2 = Color(0xff70c4bf);
  static const Color cardBackground = Color(0xff272732);
  static const Color dueDate = Color(0xff82603e);
  static const Color iconText = Color(0xff909095);
}

extension MaterialConstants on MaterialColor {
  static const MaterialColor primaryWhite = MaterialColor(0xFFFFFBFB, {
    50: Color(0xFFFFFBFB),
    100: Color(0xFFFFFBFB),
    200: Color(0xFFFFFBFB),
    300: Color(0xFFFFFBFB),
    400: Color(0xFFFFFBFB),
    500: Color(0xFFFFFBFB),
    600: Color(0xFFFFFBFB),
    700: Color(0xFFFFFBFB),
    800: Color(0xFFFFFBFB),
    900: Color(0xFFFFFBFB),
  });
  static const MaterialColor purpleGradient =
      MaterialColor(0xFFB900FF, <int, Color>{
    50: Color.fromARGB(255, 229, 209, 255),
    100: Color.fromARGB(255, 209, 185, 255),
    200: Color.fromARGB(255, 185, 150, 255),
    300: Color.fromARGB(255, 165, 120, 255),
    400: Color.fromARGB(255, 150, 95, 255),
    500: Color.fromARGB(255, 185, 0, 255),
    600: Color.fromARGB(255, 160, 0, 255),
    700: Color.fromARGB(255, 135, 0, 255),
    800: Color.fromARGB(255, 110, 0, 255),
    900: Color.fromARGB(255, 85, 0, 255),
  });

  static const MaterialColor boxGrey = MaterialColor(0xFF171717, <int, Color>{
    50: Color.fromARGB(255, 233, 233, 233),
    100: Color.fromARGB(255, 216, 216, 216),
    200: Color.fromARGB(255, 200, 200, 200),
    300: Color.fromARGB(255, 183, 183, 183),
    400: Color.fromARGB(255, 170, 170, 170),
    500: Color.fromARGB(255, 23, 23, 23),
    600: Color.fromARGB(255, 21, 21, 21),
    700: Color.fromARGB(255, 19, 19, 19),
    800: Color.fromARGB(255, 16, 16, 16),
    900: Color.fromARGB(255, 13, 13, 13),
  });

  static const MaterialColor boxGreyLight =
      MaterialColor(0xFF3D3D3D, <int, Color>{
    50: Color.fromARGB(255, 243, 243, 243),
    100: Color.fromARGB(255, 226, 226, 226),
    200: Color.fromARGB(255, 210, 210, 210),
    300: Color.fromARGB(255, 193, 193, 193),
    400: Color.fromARGB(255, 180, 180, 180),
    500: Color.fromARGB(255, 61, 61, 61),
    600: Color.fromARGB(255, 56, 56, 56),
    700: Color.fromARGB(255, 51, 51, 51),
    800: Color.fromARGB(255, 46, 46, 46),
    900: Color.fromARGB(255, 41, 41, 41),
  });

  static const MaterialColor boxGreyLighter =
      MaterialColor(0xFF898989, <int, Color>{
    50: Color.fromARGB(255, 250, 250, 250),
    100: Color.fromARGB(255, 233, 233, 233),
    200: Color.fromARGB(255, 217, 217, 217),
    300: Color.fromARGB(255, 200, 200, 200),
    400: Color.fromARGB(255, 187, 187, 187),
    500: Color.fromARGB(255, 137, 137, 137),
    600: Color.fromARGB(255, 123, 123, 123),
    700: Color.fromARGB(255, 109, 109, 109),
    800: Color.fromARGB(255, 94, 94, 94),
    900: Color.fromARGB(255, 80, 80, 80)
  });
  static const MaterialColor backgroundBlack =
      MaterialColor(0xFF101010, <int, Color>{
    50: Color.fromARGB(255, 40, 40, 40),
    100: Color.fromARGB(255, 33, 33, 33),
    200: Color.fromARGB(255, 26, 26, 26),
    300: Color.fromARGB(255, 20, 20, 20),
    400: Color.fromARGB(255, 17, 17, 17),
    500: Color.fromARGB(255, 16, 16, 16),
  });

  static const MaterialColor labelText = MaterialColor(0xFF676767, <int, Color>{
    50: Color.fromARGB(255, 167, 167, 167),
    100: Color.fromARGB(255, 137, 137, 137),
    200: Color.fromARGB(255, 108, 108, 108),
    300: Color.fromARGB(255, 88, 88, 88),
    400: Color.fromARGB(255, 78, 78, 78),
    500: Color.fromARGB(255, 67, 67, 67),
  });

  static const MaterialColor insideLabelText =
      MaterialColor(0xFF777777, <int, Color>{
    50: Color.fromARGB(255, 179, 179, 179),
    100: Color.fromARGB(255, 149, 149, 149),
    200: Color.fromARGB(255, 119, 119, 119),
    300: Color.fromARGB(255, 99, 99, 99),
    400: Color.fromARGB(255, 87, 87, 87),
    500: Color.fromARGB(255, 77, 77, 77),
  });

  static const MaterialColor buttonGradientLeft =
      MaterialColor(0xFFB615DD, <int, Color>{
    50: Color.fromARGB(255, 249, 255, 250),
    100: Color.fromARGB(255, 235, 252, 245),
    200: Color.fromARGB(255, 221, 248, 240),
    300: Color.fromARGB(255, 208, 245, 235),
    400: Color.fromARGB(255, 200, 243, 232),
    500: Color.fromARGB(255, 182, 221, 205),
  });

  static const MaterialColor buttonGradientRight =
      MaterialColor(0xFFCE28A2, <int, Color>{
    50: Color.fromARGB(255, 252, 243, 250),
    100: Color.fromARGB(255, 247, 230, 245),
    200: Color.fromARGB(255, 242, 217, 240),
    300: Color.fromARGB(255, 237, 205, 235),
    400: Color.fromARGB(255, 233, 197, 232),
    500: Color.fromARGB(255, 206, 164, 162),
  });
  static const MaterialColor appText = MaterialColor(0xFF6B6B6B, <int, Color>{
    50: Color.fromARGB(255, 245, 245, 245),
    100: Color.fromARGB(255, 235, 235, 235),
    200: Color.fromARGB(255, 225, 225, 225),
    300: Color.fromARGB(255, 215, 215, 215),
    400: Color.fromARGB(255, 205, 205, 205),
    500: Color.fromARGB(255, 107, 107, 107),
    600: Color.fromARGB(255, 102, 102, 102),
    700: Color.fromARGB(255, 96, 96, 96),
    800: Color.fromARGB(255, 91, 91, 91),
    900: Color.fromARGB(255, 85, 85, 85),
  });

  static const MaterialColor mainText = MaterialColor(0xFFD4D4D4, <int, Color>{
    50: Color.fromARGB(255, 255, 255, 255),
    100: Color.fromARGB(255, 251, 251, 251),
    200: Color.fromARGB(255, 247, 247, 247),
    300: Color.fromARGB(255, 243, 243, 243),
    400: Color.fromARGB(255, 238, 238, 238),
    500: Color.fromARGB(255, 212, 212, 212),
    600: Color.fromARGB(255, 204, 204, 204),
    700: Color.fromARGB(255, 195, 195, 195),
    800: Color.fromARGB(255, 187, 187, 187),
    900: Color.fromARGB(255, 178, 178, 178),
  });

  static const MaterialColor mainText2 = MaterialColor(0xFFFAFAFA, <int, Color>{
    50: Color.fromARGB(255, 255, 255, 255),
    100: Color.fromARGB(255, 251, 251, 251),
    200: Color.fromARGB(255, 247, 247, 247),
    300: Color.fromARGB(255, 243, 243, 243),
    400: Color.fromARGB(255, 238, 238, 238),
    500: Color.fromARGB(255, 250, 250, 250),
    600: Color.fromARGB(255, 245, 245, 245),
    700: Color.fromARGB(255, 241, 241, 241),
    800: Color.fromARGB(255, 237, 237, 237),
    900: Color.fromARGB(255, 232, 232, 232),
  });
}
