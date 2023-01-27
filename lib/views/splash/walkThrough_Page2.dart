import 'package:flutter/material.dart';

import '../../Utils/fontFamily_utils.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                'assets/images/page22.png',
                fit: BoxFit.cover,
                width: double.infinity,
                scale: 5,
              ),
              SizedBox(height: 25),
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
