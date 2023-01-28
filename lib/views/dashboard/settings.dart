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
              margin: EdgeInsets.all(15.0),
              height: 33.h,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: CupertinoIcons.profile_circled,
                    title: "Edit Profile",
                    subtitle: "Hello",
                    press: () async{
                    },
                  ),
                  ProfileMenu(
                    icon: CupertinoIcons.mail,
                    title: "Contact us",
                    subtitle: "Hello",
                    press: () {
                    },
                  ),
                  ProfileMenu(
                    icon: Icons.note_outlined,
                    title: "Terms & Condition",
                    subtitle: "Hello",
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
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              height: 25.h,
              child: Column(
                children: [
                  ProfileMenu2(
                    icon: CupertinoIcons.star_circle_fill,
                    text: "   Scoreboard",
                    press: () async{
                    },
                  ),
                  ProfileMenu2(
                    icon: CupertinoIcons.add,
                    text: "   New Courses",
                    press: () {
                    },
                  ),
                  ProfileMenu2(
                    icon: Icons.notifications,
                    text: "   Study reminder",
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
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              height: 33.h,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: CupertinoIcons.question_circle,
                    title: "Help Center",
                    subtitle: "Hello",
                    press: () async{
                    },
                  ),
                  ProfileMenu(
                    icon: CupertinoIcons.shield_lefthalf_fill,
                    title: "Privacy & Terms",
                    subtitle: "abc",
                    press: () {
                    },
                  ),
                  ProfileMenu(
                    icon: Icons.chat_bubble,
                    title: "Contact Us",
                    subtitle: "heloo",
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
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final String subtitle;
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
                title: Text(title,style: FontTextStyle.poppinsS14W4BlackColor),
                subtitle: Text(subtitle, style: FontTextStyle.poppinsS10HintColor),
              ),
            ),
            Column(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 14,
                      Icons.arrow_forward_ios,
                      color: ColorUtils.grey,
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
class ProfileMenu2 extends StatefulWidget {
  const ProfileMenu2({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  State<ProfileMenu2> createState() => _ProfileMenu2State();
}

class _ProfileMenu2State extends State<ProfileMenu2> {
  @override
  Widget build(BuildContext context) {
    var forAndroid = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            backgroundColor: ColorUtils.whiteColor
        ),
        onPressed: widget.press,
        child: Row(
          children: [
            IconButton(
              iconSize: 28,
              icon: Icon(
                widget.icon,
                color: ColorUtils.redColor,
              ),
              onPressed: () {

              },
            ),
            Expanded(
              child: Text(widget.text,style: FontTextStyle.poppinsS14W4BlackColor),
            ),
            Column(
              children: [
                Container(
                  child: Switch(
                    // thumb color (round icon)
                    activeColor: ColorUtils.redColor,
                    activeTrackColor: ColorUtils.redColor,
                    inactiveThumbColor: ColorUtils.skyBlueColor,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: 50.0,
                    // boolean variable value
                    value: forAndroid = false,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => forAndroid = value),
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
