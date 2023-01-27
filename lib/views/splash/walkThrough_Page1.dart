import 'package:flutter/material.dart';

import '../../Utils/fontFamily_utils.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/images/page1.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 64),
              Text(
                'Title',
                style: FontTextStyle.poppinsS14W4BlackColor,
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
                child: Text(
                  'Subtitle',
                  style: FontTextStyle.poppinsS14W4BlackColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
