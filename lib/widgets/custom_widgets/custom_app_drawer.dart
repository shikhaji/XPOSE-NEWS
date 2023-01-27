
import 'package:flutter/material.dart';
import 'package:xposenews/Utils/colors_utils.dart';

class CustomDrawer extends StatefulWidget {
  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Jhon Vill"),
                accountEmail: Text("jhonvill@gmail.com"),
                currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white))),
                decoration: BoxDecoration(color: ColorUtils.redColor)),
            ListTile(
                leading: Icon(Icons.person, color: ColorUtils.redColor),
                title: Text('Profile'),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (BuildContext context) {
                  //       return BottomNavBar();
                  //     }));
                }),
            ListTile(
              leading: Icon(Icons.messenger_outline_rounded, color: ColorUtils.redColor),
              title: Text('Message'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return EditProfile();
                //     }));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: ColorUtils.redColor),
              title: Text('Settings'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return OurServices();
                //     }));
              },
            ),
             Divider(color: ColorUtils.redColor, indent: 20.0),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined, color: ColorUtils.redColor),
              title: Text('Privacy Policy'),
            ),
            ListTile(
              leading: Icon(Icons.share, color: ColorUtils.redColor),
              title: Text('Share and Invite'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return SubscriptionScreen();
                //     }));
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer_outlined, color: ColorUtils.redColor),
              title: Text('FAQ'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: ColorUtils.redColor),
              title: Text('Contact us'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return ContactUs();
                //     }));
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: ColorUtils.redColor),
              title: Text('Terms & Condition'),
            ),
            ListTile(
              leading: Icon(Icons.help, color: ColorUtils.redColor),
              title: Text('Help And Feedback'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return AboutUs();
                //     }));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: ColorUtils.redColor),
              title: Text('Logout'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}