import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class Customedtext extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const Customedtext({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color ?? Apptheme.white,
        fontSize: fontSize,
      ),
    );
  }
}
