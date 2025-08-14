import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/registerverificationemail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterController extends GetxController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  login();
  register();
}

class RegisterControllerImplementation extends RegisterController {
  @override
  login() {
    Get.offNamed(LoginScreen.routName);
  }

  @override
  register() {
    Get.offNamed(RegisterverificationemailScreen.routName);
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
