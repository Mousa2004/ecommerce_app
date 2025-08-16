import 'dart:io';

import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitappAlert() {
  Get.defaultDialog(
    title: "alert".tr,
    middleText: "exitToApp".tr,
    middleTextStyle: TextStyle(
      fontSize: 16,
      color: Apptheme.black,
      fontWeight: FontWeight.w400,
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("yes".tr),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("no".tr),
      ),
    ],
  );

  return Future.value(true);
}
