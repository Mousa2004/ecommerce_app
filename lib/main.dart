import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Onboarding.routName,
      getPages: [
        GetPage(name: Onboarding.routName, page: () => Onboarding()),
        GetPage(name: LoginScreen.routName, page: () => LoginScreen()),
      ],
      theme: Apptheme.lightTheme,
    );
  }
}
