import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/colors_utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
