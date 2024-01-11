import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_20_setstate/ui/theme/app_colors.dart';
import 'package:lesson_20_setstate/ui/theme/app_fonts.dart';
import 'package:lesson_20_setstate/ui/widgets/custom_button.dart';
import 'package:lesson_20_setstate/ui/widgets/custom_circle_avatar.dart';
import 'package:lesson_20_setstate/ui/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Generate',
            style: AppFonts.s16w500.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomCircleAvatar(),
                SizedBox(
                  height: 66.h,
                ),
                const CustomTextField(
                  hintText: 'Alex Miron',
                  lableText: 'Name',
                ),
                SizedBox(
                  height: 24.h,
                ),
                const CustomTextField(
                  hintText: 'alex_marshall',
                  lableText: 'Username',
                ),
                SizedBox(
                  height: 24.h,
                ),
                const CustomTextField(
                  hintText: '+1 515 599 9655',
                  lableText: 'Phone number',
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 24.h,
                ),
                const CustomTextField(
                  hintText: 'miron.alikc@gmail.com',
                  lableText: 'Email',
                ),
                SizedBox(
                  height: 116.h,
                ),
                const CustomButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
