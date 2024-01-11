import 'package:flutter/material.dart';
import 'package:lesson_20_setstate/ui/theme/app_colors.dart';
import 'package:lesson_20_setstate/ui/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lableText,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
  });
  final String lableText;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: AppFonts.s12w400.copyWith(
          color: AppColors.lableColor,
        ),
        hintText: hintText,
        hintStyle: AppFonts.s16w400.copyWith(
          color: Colors.black,
        ),
        fillColor: AppColors.white,
        filled: true,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
      ),
    );
  }
}
