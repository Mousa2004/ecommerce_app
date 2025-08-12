import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/core/constant/image_links.dart';
import 'package:ecommerce_app/view/screen/auth/register_screen.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedimagesocial.dart';
import 'package:ecommerce_app/view/widget/auth/customedtext.dart';
import 'package:ecommerce_app/view/widget/auth/customedtextfieldauth.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:get/route_manager.dart';

class Customedcontainrlogin extends StatelessWidget {
  const Customedcontainrlogin({super.key});

  @override
  Widget build(BuildContext context) {
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
              "login".tr,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Apptheme.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            Customedtext(text: "email".tr),
            SizedBox(height: 15),
            Customedtextfieldauth(
              text: "username@gmail.com",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 15),
            Customedtext(text: "password".tr),
            SizedBox(height: 15),
            Customedtextfieldauth(
              text: "password".tr,
              prefixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {},
              child: Customedtext(text: "forgtPassword".tr),
            ),
            SizedBox(height: 30),
            Customedbutton(text: "sinin".tr),
            SizedBox(height: 20),
            Center(child: Customedtext(text: "orContinueWith".tr)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Customedimagesocial(imageName: google),
                Customedimagesocial(imageName: github),
                Customedimagesocial(imageName: facebook),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Customedtext(text: "Don’tHaveAnAccountYet".tr),
                InkWell(
                  onTap: () {
                    Get.offNamed(RegisterScreen.routName);
                  },
                  child: Customedtext(
                    text: "registerForFree".tr,
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
