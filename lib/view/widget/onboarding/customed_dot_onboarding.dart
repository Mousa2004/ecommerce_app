import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomedDotOnboarding extends StatelessWidget {
  const CustomedDotOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImplement>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onboardingList.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 900),
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 12,
                  width: controller.currentIndex == index ? 20 : 10,
                  decoration: BoxDecoration(
                    color: Apptheme.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
