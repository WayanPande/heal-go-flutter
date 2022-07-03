import 'package:flutter/material.dart';
import 'package:heal_go_flutter/screens/discover_screen.dart';
import 'package:heal_go_flutter/screens/home_screen.dart';
import 'package:heal_go_flutter/screens/profile_screen.dart';

import 'components/BottomNavigation.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {

  Widget _screen = const HomeScreen();

  void changeScreen(int index) {
    setState((){

      switch (index) {
        case 0:
          _screen = const HomeScreen();
          break;

        case 1:
          _screen = const DiscoverScreen();
          break;

        case 2:
          _screen = const ProfileScreen();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen,
        bottomNavigationBar: MyBottomNavigation(callback: changeScreen),
    );
  }
}
