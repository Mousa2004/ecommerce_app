import 'package:ecommerce_app/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedtextfieldauth.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetpasswordScreen extends StatelessWidget {
  static const String routName = "/forgetpassword";
  const ForgetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpasswordControllerImplementation controller = Get.put(
      ForgetpasswordControllerImplementation(),
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
                  "pleaseCheckEmail".tr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                Form(
                  key: controller.formstate,
                  child: Customedtextfieldauth(
                    validator: (val) {
                      return validInput(val!, 6, 60, "email");
                    },
                    controller: controller.email,
                    text: "username@gmail.com",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(height: 24),
                Customedbutton(
                  text: "checkEmail".tr,
                  onPressed: () {
                    controller.checkEmail();
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
