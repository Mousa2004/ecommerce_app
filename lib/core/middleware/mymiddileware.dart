import 'package:ecommerce_app/core/services/myservices.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mymiddileware extends GetMiddleware {
  Myservices myservices = Get.find();
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getBool("onboarding") == true) {
      return RouteSettings(name: LoginScreen.routName);
    }
  }
}
