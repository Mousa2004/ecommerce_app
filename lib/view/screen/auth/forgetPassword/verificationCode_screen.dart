import 'package:ecommerce_app/controller/auth/verificationCode_controller.dart';
import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerificationcodeScreen extends StatelessWidget {
  static const String routName = "/verificationcode";
  const VerificationcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationcodeControllerImplementation controller = Get.put(
      VerificationcodeControllerImplementation(),
    );
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0085FF), Color(0xff003465)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Logo()),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                Text(
                  "pleaseEnterCode".tr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  "mousa2692004@gmail.com",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Apptheme.grey),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                OtpTextField(
                  cursorColor: Apptheme.blue,
                  textStyle: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(color: Apptheme.blue),
                  fillColor: Apptheme.white,
                  filled: true,
                  fieldWidth: 60,
                  borderRadius: BorderRadius.circular(16),
                  numberOfFields: 5,
                  borderColor: Apptheme.white,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToResetPassword();
                  }, // end onSubmit
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
