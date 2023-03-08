import 'package:daystar_login/controllers/routes_controller.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  final RxBool obscurePassword = true.obs;

  final RxString email = ''.obs;
  final RxString password = ''.obs;

  void toggleObscurePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  void login() {
    final emailValue = email.value;
    final passwordValue = password.value;
    Get.offNamed(Routes.landingScreen);
  }
}
