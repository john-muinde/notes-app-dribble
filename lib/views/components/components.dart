import 'package:flutter/material.dart';

import '../../models/constants.dart';
import 'boxContainer.dart';

class SignUpIconsContainer extends StatelessWidget {
  final child;
  const SignUpIconsContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BoxContainer(
          child: Icon(
        child,
        color: Constants.primaryWhite,
        size: 35,
      )),
    );
  }
}
