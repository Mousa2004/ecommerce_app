import 'package:ecommerce_app/view/screen/auth/forgetPassword/successresetpassword_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  goToSuccessResetPassword();
}

class ResetpasswordControllerImplementation extends ResetpasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(SuccessresetpasswordScreen.routName);
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
