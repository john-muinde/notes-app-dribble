import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:get/get.dart';

import '../../models/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String text;
  final Function(String)? onChanged;
  final bool password;
  final RxBool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.text,
    this.onChanged,
    this.password = false,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic getSuffixIcon() {
      return password
          ? IconButton(
              icon: Icon(
                obscureText.value
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off_outlined,
              ),
              onPressed: () {
                obscureText.toggle();
              },
            )
          : null;
    }

    return Container(
      margin: const EdgeInsets.all(10),
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
          Obx(() => TextFormField(
                style: const TextStyle(
                  color: Constants.primaryWhite,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 17,
                ),
                onChanged: onChanged,
                obscureText: obscureText.value,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffixIcon: getSuffixIcon(),
                  fillColor: Constants.boxGreyLight.withOpacity(.5),
                  filled: true,
                  hintText: text,
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
              )),
        ],
      ),
    );
  }
}
