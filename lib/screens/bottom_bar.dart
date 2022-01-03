import 'package:flutter/material.dart';
import 'package:first_app/screens/home.dart';
import 'package:first_app/screens/cart.dart';
import 'package:first_app/screens/search.dart';
import 'package:first_app/screens/user_info.dart';
import 'package:first_app/ui_utils/settings.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({Key? key}) : super(key: key);

  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int currentIndex=0;
  final screen=[
    Home(),
    Search(),
    Cart(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screen,
        ),
        bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          currentIndex: currentIndex,
          onTap: (index) => setState(() =>currentIndex=index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blueGrey,),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.blueGrey,),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Cart',backgroundColor: Colors.blueGrey,),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',backgroundColor: Colors.blueGrey,),
          ],
        ),
      );
  }
}