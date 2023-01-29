import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/views/dashboard/bottonNavBar/trending.dart';
import 'package:xposenews/views/dashboard/dashbord_screen.dart';
import 'package:xposenews/views/dashboard/settings.dart';

class BottomNavBar extends StatefulWidget {
  final index;
  const BottomNavBar({Key? key,required this.index}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index != 0){
      _currentPage = widget.index;
    }
  }

  List pages = [
    DashbordScreen(),
    Trending(),
    Settings(),
    DashbordScreen(),
    Settings()
  ];

  void onTap(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: onTap,
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            activeColor: ColorUtils.blackColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.local_fire_department_sharp),
            activeColor: ColorUtils.blackColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.menu_rounded),
            activeColor: ColorUtils.blackColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.bookmark),
            activeColor: ColorUtils.blackColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            activeColor: ColorUtils.blackColor,
          ),
        ],
      ),
    );
  }
}
