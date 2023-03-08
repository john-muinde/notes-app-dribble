import 'package:flutter/cupertino.dart';

import '../../../controllers/login_sign_up_imports.dart';
import '../../../controllers/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController signUpController = Get.put(SignUpController());

  SignUpScreen({super.key});

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
              margin: EdgeInsets.only(top: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 20),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryWhite,
                          ),
                        ),
                      ),
                      Obx(() => CupertinoSwitch(
                            value: signUpController.value.value,
                            onChanged: signUpController.onValueChange,
                          )),
                    ],
                  ),
                  SizedBox(height: 25),
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
                  SizedBox(height: 25),
                  Column(
                    children: [
                      TextFieldWidget(
                        label: 'Name',
                        text: 'Jane Doe',
                        obscureText: false.obs,
                        onChanged: signUpController.onNameChange,
                      ),
                      TextFieldWidget(
                        label: 'Email',
                        text: 'abc@email.com',
                        obscureText: false.obs,
                        onChanged: signUpController.onEmailChange,
                      ),
                      TextFieldWidget(
                        label: 'Password',
                        text: 'Pick a strong Password',
                        obscureText: false.obs,
                        onChanged: signUpController.onPasswordChange,
                        password: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  ButtonWidget(
                    text: 'Create Account',
                    handlerFunction: signUpController.createAccount,
                  ),
                  SizedBox(height: 7),
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
                        TapText(
                          text: 'Login',
                          onTap: () => Get.offNamed(Routes.login),
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
