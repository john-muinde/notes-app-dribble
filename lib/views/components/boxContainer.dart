import 'package:flutter/material.dart';

import '../../models/constants.dart';

class BoxContainer extends StatelessWidget {
  final Widget child;
  final double padding;
  final double margin;
  final double background;
  final color;
  final borderWidth;
  final height;
  final width;

  const BoxContainer(
      {super.key,
      required this.child,
      this.padding = 13.0,
      this.margin = 13.0,
      this.background = .5,
      this.color,
      this.borderWidth,
      this.height,
      this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color ?? Constants.boxGreyLight.withOpacity(background),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Constants.boxGreyLight.withOpacity(1),
          width: borderWidth ?? 4.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: child,
    );
  }
}
