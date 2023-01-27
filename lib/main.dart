import 'package:flutter/material.dart';
import 'package:xposenews/views/dashboard/bottonNavBar/bottom_nav_bar.dart';
import 'package:xposenews/views/dashboard/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(index: 0),
      debugShowCheckedModeBanner: false,
    );
  }
}