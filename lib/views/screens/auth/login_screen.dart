import 'package:flutter/cupertino.dart';

import '../../../controllers/login_controller.dart';
import '../../../controllers/login_sign_up_imports.dart';

class LogInScreen extends StatelessWidget {
  final LogInController controller = Get.put(LogInController());

  LogInScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          margin: const EdgeInsets.only(left: 10, top: 38),
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
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 20),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryWhite,
                          ),
                        ),
                      ),
                      Obx(
                        () => CupertinoSwitch(
                          value: controller.obscurePassword.value,
                          onChanged: (_) => controller.toggleObscurePassword(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Text(
                          'Log in with one of the following options.',
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
                        label: 'Email',
                        text: 'tim@apple.com',
                        obscureText: false.obs,
                      ),
                      TextFieldWidget(
                        label: 'Password',
                        text: 'Pick a strong Password',
                        password: true,
                        obscureText: false.obs,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  ButtonWidget(
                    text: 'Log in',
                    handlerFunction: () => controller.login(),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t Have an account? ',
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
                          text: 'Sign up',
                          onTap: () => Get.offNamed(Routes.sign_up),
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
