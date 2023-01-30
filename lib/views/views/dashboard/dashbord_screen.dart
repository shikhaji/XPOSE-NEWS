import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import 'package:xposenews/widgets/custom_widgets/NewsList.dart';
import 'package:xposenews/widgets/custom_widgets/swipeCards.dart';
import 'package:xposenews/widgets/custom_widgets/custom_app_drawer.dart';

import '../../../Utils/colors_utils.dart';
import '../../../widgets/custom_widgets/custom_app_appbar.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  List<String> data = ['All', 'Political', 'Sport', 'Technology', 'Science'];
  Color _containerColor = ColorUtils.whiteColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.whiteColor,
        drawer: CustomDrawer(),
        appBar: CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 6.h,
                        child: TextFormField(
                          onTap: () {},
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.only(top: 5),
                            fillColor: ColorUtils.grey.withOpacity(0.2),
                            prefixIcon: const Icon(CupertinoIcons.search),
                            prefixIconColor: ColorUtils.blackColor,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 1.0),
                              child: SizedBox(
                                  height: 5.h, //height of button
                                  width: 20.w, //width of button
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: ColorUtils
                                          .redColor, //background color of button
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                    onPressed: () async {},
                                    child: Text(
                                      "Search",
                                    ),
                                  )),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            hintText: 'Find interesting news',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 0.5.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: Row(
                    children:[
                      Wrap(
                        direction: Axis.horizontal,
                        children: List.generate(5, (index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                _containerColor = ColorUtils.redColor;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: _containerColor,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: ColorUtils.blackColor, width: 1)),
                              child: Text(data[index], textAlign: TextAlign.center),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.h),
                Center(
                  child: Container(
                    height: 35.h,
                    width: 100.w,
                    child: Stack(
                      //Tinder Cards
                      children: [
                        SwipeImageCard(),
                      ],
                    ),
                  ),
                ),
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
                              style: Theme.of(context).textTheme.headline6
                          ),
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
        ));
  }
}
