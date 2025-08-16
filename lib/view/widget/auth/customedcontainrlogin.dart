import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:ecommerce_app/core/constant/image_links.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/customedbutton.dart';
import 'package:ecommerce_app/view/widget/auth/customedimagesocial.dart';
import 'package:ecommerce_app/view/widget/auth/customedtext.dart';
import 'package:ecommerce_app/view/widget/auth/customedtextfieldauth.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customedcontainrlogin extends StatelessWidget {
  const Customedcontainrlogin({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplementation controller = Get.put(
      LoginControllerImplementation(),
    );
    return SafeArea(
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.84,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff5882C1).withAlpha(200),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: controller.formstate,
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
                validator: (val) {
                  return validInput(val!, 6, 30, "email");
                },
                controller: controller.email,
                text: "username@gmail.com",
                prefixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 15),
              Customedtext(text: "password".tr),
              SizedBox(height: 15),
              GetBuilder<LoginControllerImplementation>(
                builder: (controller) => Customedtextfieldauth(
                  obscureTex: controller.isShow,
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.showPassword();
                    },
                    icon: Icon(
                      controller.isShow
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  controller: controller.password,
                  text: "password".tr,
                  prefixIcon: Icon(Icons.lock_outline),
                  validator: (val) {
                    return validInput(val!, 6, 30, "password");
                  },
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Customedtext(text: "forgtPassword".tr),
              ),
              SizedBox(height: 30),
              Customedbutton(
                text: "sinin".tr,
                onPressed: () {
                  controller.login();
                },
              ),
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
                      controller.register();
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
      ),
    );
  }
}
