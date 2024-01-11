import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_20_setstate/presentation/theme/app_colors.dart';
import 'package:lesson_20_setstate/presentation/theme/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppFonts.s16w500.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
