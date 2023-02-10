import 'package:flutter/material.dart';

import '../../models/constants.dart';

class ButtonWidget extends StatelessWidget {
  final text;
  final padding;
  const ButtonWidget({super.key, required this.text, this.padding = 15});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      color: Colors.transparent,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent)),
        onPressed: () {},
        child: Ink(
          decoration: const BoxDecoration(
            gradient: Constants.linearGradient,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Container(
            padding: EdgeInsets.all(padding + 0.0),
            // min sizes for Material buttons
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Constants.primaryWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
