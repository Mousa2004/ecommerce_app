import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:flutter/material.dart';

class CustomedButtonOnboarding extends StatelessWidget {
  const CustomedButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        color: Apptheme.blue,
        padding: EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {},
        child: Text(
          "Contnue",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Apptheme.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
