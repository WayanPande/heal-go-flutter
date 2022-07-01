import 'package:flutter/material.dart';


class MyBottomNavigation extends StatefulWidget {

  final Function callback;

  const MyBottomNavigation({Key? key, required this.callback}): super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {

  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int index) {
    setState((){
      _selectedNavbar = index;
    });
    widget.callback(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Discover"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        )
      ],
      currentIndex: _selectedNavbar,
      onTap: _changeSelectedNavbar,
    );
  }
}

