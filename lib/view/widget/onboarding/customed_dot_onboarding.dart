import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomedDotOnboarding extends StatelessWidget {
  const CustomedDotOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onboardingList.length,
            (index) => AnimatedContainer(
              duration: Duration(milliseconds: 900),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: 12,
                width: 10,
                decoration: BoxDecoration(
                  color: Apptheme.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
