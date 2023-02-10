import 'package:daystar_login/models/constants.dart';
import 'package:flutter/material.dart';

class GradientLinearCustom {
  final LinearGradient gradient;

  late BoxDecoration boxDecoration;
  late Color gradientColor;

  GradientLinearCustom({
    this.gradient = Constants.linearGradient,
  }) {
    initializeProperties();
  }

  void initializeProperties() {
    boxDecoration = BoxDecoration(
      gradient: gradient,
    );
  }

  dynamic get color {
    boxDecoration.color;
  }
}
