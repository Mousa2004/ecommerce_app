import 'package:ecommerce_app/view/screen/auth/forgetPassword/verificationCode_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkEmail();
}

class ForgetpasswordControllerImplementation extends ForgetpasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  checkEmail() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(VerificationcodeScreen.routName);
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
