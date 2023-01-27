import 'package:flutter/material.dart';
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
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        color: Colors.red,
        height: 200,
        child: Row(
          children: [
            Column(
              children: [
                CircleAvatar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
