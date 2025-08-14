import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class Customedimagesocial extends StatelessWidget {
  final String imageName;
  const Customedimagesocial({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Apptheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Image.asset(
        imageName,
        height: 20,
        width: 20,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
