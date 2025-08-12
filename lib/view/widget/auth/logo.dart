import 'package:ecommerce_app/core/constant/image_links.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(logo, height: 130, width: 160, fit: BoxFit.fill),
    );
  }
}
