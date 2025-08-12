import 'package:ecommerce_app/view/widget/auth/customedcontainrregister.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routName = "/register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0085FF), Color(0xff003465)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(child: Customedcontainrregister()),
        ),
      ),
    );
  }
}
