import 'package:ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class Customedtextfieldauth extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  final String? Function(String?) validator;

  const Customedtextfieldauth({
    super.key,
    required this.text,
    this.suffixIcon,
    required this.prefixIcon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Apptheme.white,
        filled: true,
        hintText: text,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: Apptheme.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTapOutside: (_) => FocusManager.instance.primaryFocus!.unfocus(),
    );
  }
}
