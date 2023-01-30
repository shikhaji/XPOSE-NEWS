import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/views/splash/walkThrough_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WalkThroughScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          backgroundColor: ColorUtils.appBgWhiteColor,
          body: Center(
              child: Image.asset(
                "assets/images/logowhite.jpeg",
                scale: 2,
              ),
          ),
        )
    );
  }
}
