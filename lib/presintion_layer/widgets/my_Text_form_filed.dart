import 'package:flutter/material.dart';

import '../../core/color_manager.dart';

class MyTextFormFiled extends StatelessWidget {
  const MyTextFormFiled(
      {super.key,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.colorManager = ColorManager.white});

  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Color? colorManager;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: obscureText!,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(

        filled: true,
        fillColor: colorManager,
        focusColor:colorManager ,
        hintText: hintText,
        labelText: labelText,
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: ColorManager.black),
        ),
        focusedBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: ColorManager.black),
        ),
      ),
    );
  }
}
