import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/core/localization/local_controller.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/myservices.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/register_screen.dart';
import 'package:ecommerce_app/view/screen/language_screen.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LanguageScreen.routName,
      getPages: [
        GetPage(name: Onboarding.routName, page: () => Onboarding()),
        GetPage(name: LoginScreen.routName, page: () => LoginScreen()),
        GetPage(name: RegisterScreen.routName, page: () => RegisterScreen()),
        GetPage(name: LanguageScreen.routName, page: () => LanguageScreen()),
      ],
      translations: MyTranslation(),
      locale: localController.language,
      theme: Apptheme.lightTheme,
    );
  }
}
