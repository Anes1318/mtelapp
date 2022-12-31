import 'package:flutter/material.dart';
import 'package:mtelapp/components/customAppbar.dart';
import 'package:mtelapp/screens/bottomNavigation_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.indigo, // da bi suffix ikonica promijenila boju kad je focused
            ),
        fontFamily: 'Poppins',
      ),
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationScreen();
  }
}
