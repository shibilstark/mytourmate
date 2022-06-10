import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/landing_screen/landing_screen.dart';
import 'package:my_tour_mate/themes/colors.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                appBarTheme: AppBarTheme(backgroundColor: darkOrange)),
            debugShowCheckedModeBanner: false,
            home: const LandingScreen(),
          );
        });
  }
}
