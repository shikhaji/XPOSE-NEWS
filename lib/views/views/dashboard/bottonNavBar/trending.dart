import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import 'package:xposenews/widgets/custom_widgets/custom_app_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../widgets/custom_widgets/NewsList.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

final List<String> imgList = [
  'https://images.pexels.com/photos/699459/pexels-photo-699459.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/2130166/pexels-photo-2130166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/699459/pexels-photo-699459.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/2130166/pexels-photo-2130166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];

final List<String> newsList = [
  'Gritty Ankita Raina back to her best with semis run',
  'Sadghuru\'s Latest Investment Has Experts in Awe And Big Banks Terrified',
  'Gritty Ankita Raina back to her best with semis run',
  'Gritty Ankita Raina back to her best with semis run'
];

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.whiteColor,
      drawer: CustomDrawer(),
      //appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Text('Today Trending',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppinsFamily)),
              SizedBox(height: 3.h),
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 12 / 13,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  scrollDirection: Axis.horizontal,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),

                ),
                items: imgList
                    .map((item) => Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(item),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: 40.h,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Hello World',
                                      style:
                                          FontTextStyle.poppinsS16W7WhiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              )),
              Container(
                // padding: EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recommendation',
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(onPressed: () {}, child: Text('See all'))
                      ],
                    ),
                    NewsList(),
                    NewsList(),
                    NewsList(),
                    NewsList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
