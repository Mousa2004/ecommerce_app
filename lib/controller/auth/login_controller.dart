import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  login();
  goToForgetPassword();
  register();
  showPassword();
}

class LoginControllerImplementation extends LoginController {
  bool isShow = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  login() {
    if (formstate.currentState!.validate()) {
      print("vaild");
    } else {
      print("not vaild");
    }
  }

  @override
  register() {
    Get.offNamed(RegisterScreen.routName);
  }

  @override
  goToForgetPassword() {
    Get.offNamed(ForgetpasswordScreen.routName);
  }

  @override
  showPassword() {
    isShow = isShow == true ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
