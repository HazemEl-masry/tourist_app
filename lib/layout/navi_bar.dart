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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
      //   },
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.menu),
          Icon(Icons.home),
          Icon(Icons.settings)
        ],
        index: currentIndex,
        onTap: onTaped,
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