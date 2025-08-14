import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/core/localization/local_controller.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/myservices.dart';
import 'package:ecommerce_app/routname_screen.dart';
import 'package:ecommerce_app/view/screen/language_screen.dart';
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
      getPages: getPageScreen,
      translations: MyTranslation(),
      locale: localController.language,
      theme: Apptheme.lightTheme,
    );
  }
}
