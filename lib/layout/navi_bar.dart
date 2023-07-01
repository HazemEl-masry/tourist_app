// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../modules/home.dart';
import '../modules/menu_screen.dart';
import '../modules/setting.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen({Key? key}) : super(key: key);

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 1;
  // final List<Widget> icons = [
  //   const Icon(Icons.menu,size: 30.0,),
  //   const Icon(Icons.home,size: 30.0,),
  //   const Icon(Icons.settings,size: 30.0,),
  //   // const Icon(Icons.person,size: 30.0,)
  // ];
  List<Widget> screens = [
    const MenuScreen(),
    const HomeScreen(),
    const SettingsScreen(),
  ];

  void onTaped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  void onItemTaped(int i)
  {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: onTaped,
        children: screens,
      ),
      // body: screens[currentIndex],
      //................

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
      //   },
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white10,
        items: const [
          Icon(Icons.menu,color: Colors.white),
          Icon(Icons.home,color: Colors.white),
          Icon(Icons.settings,color: Colors.white)
        ],
        index: currentIndex,
        onTap: onItemTaped,
      ),
    );
  }
}


// floatingActionButton: FloatingActionButton(
//   onPressed: () {},
//   backgroundColor: Colors.blue,
//   child: const Icon(Icons.home),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// bottomNavigationBar: AnimatedBottomNavigationBar(
//   backgroundColor: Colors.blue,
//     inactiveColor: Colors.black,
//     activeColor: Colors.white,
//     icons: iconList,
//     activeIndex: currentIndex,
//     onTap: onTaped,
//     gapLocation: GapLocation.center,
//     elevation: 0,
//     notchSmoothness: NotchSmoothness.verySmoothEdge,
//     leftCornerRadius: 20.0,
//     rightCornerRadius: 20.0,
// ),