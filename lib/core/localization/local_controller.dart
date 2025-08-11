import 'package:ecommerce_app/core/services/myservices.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class LocalController extends GetxController {
  Locale? language;
  Myservices myservices = Get.find();
  chaneLanguage(String langCode) {
    Locale local = Locale(langCode);
    myservices.sharedPreferences.setString("lang", "$local");
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myservices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
