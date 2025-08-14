import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignupScreen extends StatelessWidget {
  static const String routName = "/successSignup";
  const SuccessSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0085FF), Color(0xff003465)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                Text(
                  "success".tr,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Apptheme.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                Icon(
                  Icons.check_circle_outlined,
                  size: 250,
                  color: Apptheme.white,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                Text(
                  textAlign: TextAlign.center,
                  "registerSuceesAndEmail".tr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                Spacer(),
                Customedbutton(
                  text: "goToLogin".tr,
                  onPressed: () {
                    Get.offNamed(LoginScreen.routName);
                  },
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
