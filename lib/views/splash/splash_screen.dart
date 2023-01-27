import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          body: Center(
              child: Image.asset(
                "asset/images/logo.png",
                scale: 2,
              )),
        ));
  }
}
