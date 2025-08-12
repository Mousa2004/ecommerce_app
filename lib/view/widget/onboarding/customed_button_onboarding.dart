import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/src/extensions/export.dart';

class CustomedButtonOnboarding extends GetView<OnboardingControllerImplement> {
  const CustomedButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        color: Apptheme.blue,
        padding: EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {
          controller.next();
        },
        child: Text(
          "contnue".tr,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Apptheme.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
