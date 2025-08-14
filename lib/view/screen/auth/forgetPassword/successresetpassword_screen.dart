import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessresetpasswordScreen extends StatelessWidget {
  static const String routName = "/successresetpassword";
  const SuccessresetpasswordScreen({super.key});

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
                Customedtext(text: "passresetSuccess".tr, fontSize: 20),
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
