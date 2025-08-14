import 'package:ecommerce_app/controller/auth/register_controller.dart';
import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedtext.dart';
import 'package:ecommerce_app/view/widget/auth/customedtextfieldauth.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customedcontainrregister extends StatelessWidget {
  const Customedcontainrregister({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImplementation controller = Get.put(
      RegisterControllerImplementation(),
    );
    return SafeArea(
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.81,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff5882C1).withAlpha(200),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Logo()),
            SizedBox(height: 30),
            Text(
              "register".tr,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Apptheme.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            Customedtext(text: "username".tr),
            SizedBox(height: 15),
            Customedtextfieldauth(
              controller: controller.username,
              text: "username".tr,
              prefixIcon: Icon(Icons.person_pin_rounded),
            ),
            SizedBox(height: 15),
            Customedtext(text: "email".tr),
            SizedBox(height: 15),
            Customedtextfieldauth(
              controller: controller.email,
              text: "username@gmail.com",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 15),
            Customedtext(text: "password".tr),
            SizedBox(height: 15),
            Customedtextfieldauth(
              controller: controller.password,
              text: "password".tr,
              prefixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(height: 30),
            Customedbutton(
              text: "register".tr,
              onPressed: () {
                controller.register();
              },
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Customedtext(text: "DoYouHaveANAccount".tr),
                InkWell(
                  onTap: () {
                    controller.login();
                  },
                  child: Customedtext(
                    text: "login".tr,
                    color: const Color.fromARGB(255, 11, 40, 65),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
