import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class Customedbutton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const Customedbutton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 11, 40, 65),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Apptheme.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
