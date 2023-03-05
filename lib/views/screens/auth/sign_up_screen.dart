import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../routes.dart';
import '../../components/textField.dart';
import '../../../models/constants.dart';
import '../../components/boxContainer.dart';
import '../../components/buttonWidgets.dart';
import '../../components/components.dart';

Widget sized({height = 10}) {
  return SizedBox(
    height: height + 0.0,
  );
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var value = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          margin: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // BoxContainer(
                      //   background: .0,
                      //   child: GestureDetector(
                      //     onTap: () {},
                      //     child: const Icon(
                      //       Icons.arrow_back_ios_new_outlined,
                      //       color: Constants.primaryWhite,
                      //       size: 30,
                      //     ),
                      //   ),
                      // ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryWhite,
                          ),
                        ),
                      ),
                      CupertinoSwitch(
                        value: value,
                        onChanged: (bool val) {
                          setState(() {
                            value = val;
                          });
                        },
                      ),
                    ],
                  ),
                  sized(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8, bottom: 8),
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
                  sized(height: 25),
                  Column(
                    children: [
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
                        password: true,
                      ),
                    ],
                  ),
                  sized(height: 25),
                  ButtonWidget(
                    text: 'Create Account',
                    handlerFunction: () => Navigator.of(context)
                        .pushReplacementNamed(Routes.sign_up),
                  ),
                  sized(height: 25),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already Have an account? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Constants.insideLabelText,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(Routes.login),
                          child: const Text(
                            'Log in',
                            style: TextStyle(color: Constants.primaryWhite),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
