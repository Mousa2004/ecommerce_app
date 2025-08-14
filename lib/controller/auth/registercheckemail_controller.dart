import 'package:ecommerce_app/view/screen/auth/success_signup_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class RegistercheckemailController extends GetxController {
  checkEmail();
  goToSuccessRegister();
}

class RegistercheckemailControllerImplementation
    extends RegistercheckemailController {
  late TextEditingController email;
  @override
  checkEmail() {}
  @override
  goToSuccessRegister() {
    Get.offNamed(SuccessSignupScreen.routName);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
