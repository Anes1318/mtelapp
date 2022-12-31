import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mtelapp/screens/mape_screen.dart';
import 'package:mtelapp/screens/marketi_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _pages = [
    MarketiScreen(),
    MapeScreen(),
    MapeScreen(),
    MapeScreen(),
    MapeScreen(),
  ];

  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border(
          //   top: BorderSide(color: Colors.grey),
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 6,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 88,
        child: GNav(
          onTabChange: _selectPage,
          selectedIndex: _selectedIndex,
          tabBackgroundColor: Color.fromRGBO(85, 74, 240, 1),
          // backgroundColor: Colors.grey.shade500,
          activeColor: Colors.white,
          color: Colors.black,

          tabBorderRadius: 10,
          duration: Duration(milliseconds: 500),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          iconSize: 24,
          textSize: 10,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // tabActiveBorder: Border.all(color: Colors.indigo.shade700, width: 1),
          tabs: [
            GButton(
              icon: Iconsax.shop,
            ),
            GButton(
              icon: Iconsax.map_1,
            ),
            GButton(
              icon: Iconsax.wallet_money,
            ),
            GButton(
              icon: Iconsax.status_up,
            ),
            GButton(
              icon: Iconsax.menu,
            ),
          ],
        ),
      ),
    );
  }
}
