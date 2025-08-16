import 'package:ecommerce_app/core/services/myservices.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImplement extends OnboardingController {
  Myservices myservices = Get.find();
  int currentIndex = 0;
  late PageController pageController;
  @override
  next() {
    currentIndex++;
    if (currentIndex > onboardingList.length - 1) {
      myservices.sharedPreferences.setBool("onboarding", true);
      Get.offAllNamed(LoginScreen.routName);
    } else {
      pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChange(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
