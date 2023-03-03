import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../models/constants.dart';

class TextFieldWidget extends StatefulWidget {
  final label;
  final text;
  final controller;
  bool password;
  TextFieldWidget({
    super.key,
    required this.label,
    required this.text,
    this.controller,
    this.password = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool obsecureText = widget.password;
  dynamic get suffixIcon {
    return widget.password
        ? IconButton(
            icon: Icon(
              obsecureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () {
              obsecureText = !obsecureText;
              setState(() {});
            },
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(color: Constants.mainText),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            style: const TextStyle(
              color: Constants.primaryWhite,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              fontSize: 17,
            ),
            obscureText: obsecureText,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              fillColor: Constants.boxGreyLight.withOpacity(.5),
              filled: true,
              hintText: widget.text,
              hintStyle: const TextStyle(
                color: Constants.boxGreyLighter,
                fontSize: 17,
              ),
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
