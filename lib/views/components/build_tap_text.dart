import 'package:flutter/material.dart';

import '../../models/constants.dart';

class TapText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const TapText({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Constants.buttonGradientRight,
      overlayColor: MaterialStateProperty.all(Constants.buttonGradientRight),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: const EdgeInsets.only(
          top: 15,
          left: 5,
          bottom: 15,
          right: 15,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: const TextStyle(
            color: Constants.primaryWhite,
          ),
        ),
      ),
    );
  }
}
