import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/views/singlePost_screen.dart';
import 'package:xposenews/views/splash/splash_screen.dart';
import 'package:xposenews/views/splash/walkThrough_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: "${SplashScreen()}",
        home: SplashScreen(),
      );
    });
  }
}