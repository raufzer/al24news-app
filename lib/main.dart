import 'package:al24news_app/screens/home_screen.dart';
import 'package:al24news_app/screens/news_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AL24NewsApp());
}

class AL24NewsApp extends StatelessWidget {
  const AL24NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AL24News',
          home: child,
        );
      },
      child: const HomeScreen(
      ),
    );
  }
}
