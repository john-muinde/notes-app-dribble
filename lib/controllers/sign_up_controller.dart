import 'package:daystar_login/controllers/routes_controller.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var value = true.obs;
  var name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  void onValueChange(bool val) {
    value.value = val;
  }

  void onNameChange(String val) {
    name.value = val;
  }

  void onEmailChange(String val) {
    email.value = val;
  }

  void onPasswordChange(String val) {
    password.value = val;
  }

  void createAccount() {
    // implement your create account functionality here
    Get.toNamed(Routes.sign_up);
  }
}
