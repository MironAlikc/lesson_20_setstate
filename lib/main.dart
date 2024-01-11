import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_20_setstate/presentation/screens/home_screen.dart';
import 'package:lesson_20_setstate/presentation/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.bgColor,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.bgColor,
                elevation: 0,
              ),
            ),
            title: 'Flutter Demo',
            home: const HomeScreen(),
          );
        });
  }
}
