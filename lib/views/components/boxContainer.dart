import 'package:flutter/material.dart';

import '../../models/constants.dart';

class BoxContainer extends StatelessWidget {
  final Widget child;
  final padding;
  final margin;
  final background;
  const BoxContainer({
    super.key,
    required this.child,
    this.padding = 13.0,
    this.margin = 13.0,
    this.background = .5,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Constants.boxGreyLight.withOpacity(background),
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
