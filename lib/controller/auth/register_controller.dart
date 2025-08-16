import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/verificationcodesignup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterController extends GetxController {
  bool isShow = true;
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  login();
  register();
  showPassword();
}

class RegisterControllerImplementation extends RegisterController {
  @override
  login() {
    Get.offNamed(LoginScreen.routName);
  }

  @override
  register() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(VerificationcodesignupScreen.routName);
    }
  }

  @override
  showPassword() {
    isShow = isShow == true ? false : true;
    update();
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
