import 'package:ecommerce_app/core/functions/exitapp_alert.dart';
import 'package:ecommerce_app/view/widget/auth/customedcontainrlogin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routName = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            exitappAlert();
          }
        },
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0085FF), Color(0xff003465)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(child: Customedcontainrlogin()),
          ),
        ),
      ),
    );
  }
}
