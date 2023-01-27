import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import '../../Utils/colors_utils.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: ColorUtils.whiteColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            "assets/images/logowhite.jpeg",
            height: 60,
          ),
          leading: Builder(builder: (context) {
            return IconButton(
              iconSize: 30,
              icon: Icon(
                Icons.menu,
                color: ColorUtils.blackColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          actions: [
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.symmetric(horizontal: 20),
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.location_solid,
                color: ColorUtils.blackColor,
              ),
            ),
          ],
        ),
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
                                    primary: ColorUtils.redColor, //background color of button
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  onPressed: () async {
                                  },
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

              ],
            ),
          ),
        ));
  }
}
