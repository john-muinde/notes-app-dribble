import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../models/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final label;
  final text;
  final controller;
  final bool password;
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.text,
    this.controller,
    this.password = false,
  });
  dynamic get suffixIcon {
    return password
        ? IconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            onPressed: () {},
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all( 10),
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Constants.mainText),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(
                  color: Constants.boxGreyLighter, fontSize: 17),
              focusedBorder: GradientOutlineInputBorder(
                gradient: Constants.linearGradient,
                width: 3,
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Constants.boxGreyLight,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
