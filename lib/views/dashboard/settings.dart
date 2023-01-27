import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import 'package:sizer/sizer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',
        style: TextStyle(color: ColorUtils.blackColor),
        ),
        leading: BackButton(
          color: ColorUtils.blackColor,
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: ColorUtils.skyBlueColor,
                    blurRadius: 5.0,
                  ),]
              ),
              margin: EdgeInsets.all(20.0),
              height: 33.h,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: CupertinoIcons.profile_circled,
                    text: "Edit Profile",
                    press: () async{
                    },
                  ),
                  ProfileMenu(
                    icon: CupertinoIcons.mail,
                    text: "Contact us",
                    press: () {
                    },
                  ),
                  ProfileMenu(
                    icon: Icons.note_outlined,
                    text: "Terms & Condition",
                    press: (){
                    },
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: ColorUtils.skyBlueColor,
                    blurRadius: 5.0,
                  ),]
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              height: 33.h,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: CupertinoIcons.profile_circled,
                    text: "Edit Profile",
                    press: () async{
                    },
                  ),
                  ProfileMenu(
                    icon: CupertinoIcons.mail,
                    text: "Contact us",
                    press: () {
                    },
                  ),
                  ProfileMenu(
                    icon: Icons.note_outlined,
                    text: "Terms & Condition",
                    press: (){
                    },
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: ColorUtils.skyBlueColor,
                    blurRadius: 5.0,
                  ),]
              ),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 33.h,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: CupertinoIcons.question_circle,
                    text: "Help Center",
                    press: () async{
                    },
                  ),
                  ProfileMenu(
                    icon: CupertinoIcons.shield_lefthalf_fill,
                    text: "Privacy & Terms",
                    press: () {
                    },
                  ),
                  ProfileMenu(
                    icon: Icons.chat_bubble,
                    text: "Contact Us",
                    press: (){
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          backgroundColor: ColorUtils.whiteColor
        ),
        onPressed: press,
        child: Row(
          children: [
            IconButton(
              iconSize: 28,
              icon: Icon(
                icon,
                color: ColorUtils.redColor,
              ),
              onPressed: () {

              },
            ),
            Expanded(
              child: ListTile(
                title: Text(text,style: FontTextStyle.poppinsS14W4BlackColor),
                subtitle: Text(text, style: FontTextStyle.poppinsS10HintColor),
              ),
            ),
            Column(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 14,
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
