import 'package:ecommerce_app/view/screen/auth/verificationcodesignup_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class RegistercheckemailController extends GetxController {
  checkEmail();
  goToVerificationSingUp();
}

class RegistercheckemailControllerImplementation
    extends RegistercheckemailController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  checkEmail() {}
  @override
  goToVerificationSingUp() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(VerificationcodesignupScreen.routName);
    }
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
