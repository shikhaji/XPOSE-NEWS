import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:xposenews/Utils/colors_utils.dart';
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
      body: PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
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
