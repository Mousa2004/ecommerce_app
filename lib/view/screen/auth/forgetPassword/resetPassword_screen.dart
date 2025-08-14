import 'package:ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedtextfieldauth.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetpasswordScreen extends StatelessWidget {
  static const String routName = "/ResetpasswordScreen";
  const ResetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImplementation controller = Get.put(
      ResetpasswordControllerImplementation(),
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
                  "pleaseEnteryournewpassword".tr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                Customedtextfieldauth(
                  controller: controller.password,
                  text: "password".tr,
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                SizedBox(height: 15),
                Customedtextfieldauth(
                  controller: controller.password,
                  text: "repassword".tr,
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                SizedBox(height: 24),
                Customedbutton(
                  text: "save".tr,
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
