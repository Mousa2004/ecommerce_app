import 'package:ecommerce_app/view/screen/auth/success_signup_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerificationcodesignupController extends GetxController {
  late String verifiyCode;
  goToSuccess();
}

class VerificationcodesignupControllerImplementation
    extends VerificationcodesignupController {
  late TextEditingController email;
  @override
  goToSuccess() {
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
