import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import 'package:xposenews/widgets/custom_widgets/custom_app_drawer.dart';
import '../../Utils/colors_utils.dart';
import '../../widgets/custom_widgets/custom_app_appbar.dart';

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
                      child: TextFormField(
                        onTap: () {},
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorUtils.grey.withOpacity(0.2),
                          prefixIcon: const Icon(CupertinoIcons.search),
                          prefixIconColor: ColorUtils.blackColor,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SizedBox(
                                height: 40, //height of button
                                width: 25.w, //width of button
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: ColorUtils
                                        .redColor, //background color of button
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  onPressed: () async {},
                                  child: Text(
                                    "Search",
                                    style: FontTextStyle.poppinsS16W7WhiteColor,
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
                    )
                  ],
                ),
                SizedBox(height: 1.h),
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
                                  borderRadius: BorderRadius.circular(20),
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
                // Row(
                //   children: [
                //     SizedBox(
                //       height: 200,
                //       width: double.infinity,
                //       child: Carousel(
                //         // images:[
                //         //   for(var i=0; i<images!.length ; i++)...[
                //         //     Image.network('https://celebrationstation.in/uploads/'+images![i]['IMAGE_URL'])
                //         //   ]
                //         // ],
                //         //images.map((e) => Image.network('https://celebrationstation.in/uploads/'+images[e]['IMAGE_URL'])).toList(),
                //         showIndicator: true,
                //         autoplay: true,
                //         autoplayDuration: Duration(seconds: 2),
                //         borderRadius: false,
                //         moveIndicatorFromBottom: 180.0,
                //         overlayShadow: true,
                //         overlayShadowColors: Colors.black,
                //         overlayShadowSize: 0.4,
                //         indicatorBgPadding: 5,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ));
  }
}
