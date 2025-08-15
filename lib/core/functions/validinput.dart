import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "cantbeEmpty".tr;
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "notValidUsername".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "notValidEmail".tr;
    }
  }
  if (val.length > max) {
    return "cantbeMost".tr;
  }
  if (val.length < min) {
    return "cantbeLeast".tr;
  }
}
