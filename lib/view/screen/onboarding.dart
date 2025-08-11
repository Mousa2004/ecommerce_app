import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/view/widget/onboarding/customed_button_onboarding.dart';
import 'package:ecommerce_app/view/widget/onboarding/customed_dot_onboarding.dart';
import 'package:ecommerce_app/view/widget/onboarding/customed_slider_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class Onboarding extends StatelessWidget {
  static const String routName = "/onboardin";
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImplement());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.83,
            child: CustomedSliderOnboarding(),
          ),
          CustomedDotOnboarding(),
          CustomedButtonOnboarding(),
        ],
      ),
    );
  }
}
