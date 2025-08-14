import 'package:ecommerce_app/view/screen/auth/forgetPassword/resetPassword_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerificationcodeController extends GetxController {
  late String verifiyCode;
  goToResetPassword();
}

class VerificationcodeControllerImplementation
    extends VerificationcodeController {
  late TextEditingController email;
  @override
  goToResetPassword() {
    Get.offNamed(ResetpasswordScreen.routName);
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
