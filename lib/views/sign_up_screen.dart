import 'package:flutter/material.dart';

import '../models/constants.dart';
import 'components/boxContainer.dart';
import 'components/buttonWidgets.dart';
import 'components/components.dart';
import 'components/textField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BoxContainer(
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Constants.primaryWhite,
                    size: 30,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  'Sign up with one of the following options.',
                  style: TextStyle(
                    color: Constants.mainText.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: const [
                  SignUpIconsContainer(
                    child: Icons.person,
                  ),
                  SignUpIconsContainer(
                    child: Icons.apple_rounded,
                  )
                ],
              ),
            ],
          ),
          Column(
            children: const [
              TextFieldWidget(
                label: 'Name',
                text: 'Jane Doe',
              ),
              TextFieldWidget(
                label: 'Email',
                text: 'tim@apple.com',
              ),
              TextFieldWidget(
                label: 'Password',
                text: 'Pick a strong Password',
              ),
            ],
          ),
          const ButtonWidget(
            text: 'Create Account',
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Already Have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.insideLabelText,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Log in',
                  style: TextStyle(color: Constants.primaryWhite),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
