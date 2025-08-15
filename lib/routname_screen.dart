import 'package:ecommerce_app/view/screen/auth/registerverificationemail_screen.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/register_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/resetPassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/successresetpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verificationCode_screen.dart';
import 'package:ecommerce_app/view/screen/auth/verificationcodesignup_screen.dart';
import 'package:ecommerce_app/view/screen/language_screen.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>> getPageScreen = [
  GetPage(name: Onboarding.routName, page: () => Onboarding()),
  GetPage(name: LoginScreen.routName, page: () => LoginScreen()),
  GetPage(name: RegisterScreen.routName, page: () => RegisterScreen()),
  GetPage(
    name: ForgetpasswordScreen.routName,
    page: () => ForgetpasswordScreen(),
  ),
  GetPage(
    name: VerificationcodeScreen.routName,
    page: () => VerificationcodeScreen(),
  ),
  GetPage(
    name: ResetpasswordScreen.routName,
    page: () => ResetpasswordScreen(),
  ),
  GetPage(
    name: SuccessresetpasswordScreen.routName,
    page: () => SuccessresetpasswordScreen(),
  ),
  GetPage(
    name: SuccessSignupScreen.routName,
    page: () => SuccessSignupScreen(),
  ),
  GetPage(
    name: RegisterverificationemailScreen.routName,
    page: () => RegisterverificationemailScreen(),
  ),
  GetPage(
    name: VerificationcodesignupScreen.routName,
    page: () => VerificationcodesignupScreen(),
  ),
  GetPage(name: LanguageScreen.routName, page: () => LanguageScreen()),
];
