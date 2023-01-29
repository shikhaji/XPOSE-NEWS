import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xposenews/views/dashboard/bottonNavBar/bottom_nav_bar.dart';
import 'package:xposenews/views/dashboard/dashbord_screen.dart';
import 'package:xposenews/views/splash/walkThrough_Page1.dart';
import 'package:xposenews/views/splash/walkThrough_Page2.dart';
import 'package:xposenews/views/splash/walkThrough_Page3.dart';
import '../../Utils/colors_utils.dart';
import '../../Utils/fontFamily_utils.dart';
import '../../widgets/custom_widgets/custom_primary_button.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  //Declaring Controller
  int currentIndex = 0;
  final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.appBgWhiteColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.whiteColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => _controller.jumpToPage(2),
            child: Text(
                'Skip',
              style: FontTextStyle.poppinsS14W4BlackColor,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //SizedBox For Page View
          Padding(
            padding: EdgeInsets.only(bottom: 80),
            child: SizedBox(
              height: 60.h,
              child: PageView(
                controller: _controller,
                children: [
                  //Createing as many page as we want
                  Page1(),
                  Page2(),
                  Page3()
                ],
              ),
            ),
          ),
          //Createing Page Indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ColorTransitionEffect(
              activeDotColor: ColorUtils.redColor,
              dotColor: ColorUtils.redColor.withOpacity(0.5),
              dotHeight: 2.h,
              dotWidth: 5.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Center(
              child: SizedBox(
                  height: 50, //height of button
                  width: double.infinity, //width of button
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorUtils.redColor, //background color of button
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(index: 0),));
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(builder: (context) => DashbordScreen()),
                      //         (Route<dynamic> route) => false);
                    },
                    child: Text(
                      "Get Started",
                      style: FontTextStyle.poppinsS16W7WhiteColor,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
