import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/core/localization/local_controller.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:ecommerce_app/view/widget/language/customedbuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class LanguageScreen extends GetView<LocalController> {
  static const String routName = "/language";
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Choose Language",
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Apptheme.blue),
          ),
          Customedbuttonlang(
            text: "Arabic",
            onPressed: () {
              controller.chaneLanguage("ar");
              Get.offNamed(Onboarding.routName);
            },
          ),
          Customedbuttonlang(
            text: "English",
            onPressed: () {
              controller.chaneLanguage("en");
              Get.offNamed(Onboarding.routName);
            },
          ),
        ],
      ),
    );
  }
}
