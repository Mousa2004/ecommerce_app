import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class Customedbuttonlang extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Customedbuttonlang({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Apptheme.blue,
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
