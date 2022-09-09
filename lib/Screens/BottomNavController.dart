import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'bottom_bar_screen.dart';

class BottomNavController extends StatefulWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search here"),
    const Text("Ticket"),
    const Text("Profile man"),
  ];
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: BottomNavController._widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomBar(
          onTap: _onItemTap,
          currentIndex: _selectedIndex,
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   items: const [
        //     Icon(
        //       Icons.add,
        //       size: 30,
        //     ),
        //     Icon(
        //       Icons.list,
        //       size: 30,
        //     ),
        //     Icon(
        //       Icons.search,
        //       size: 30,
        //     ),
        //     Icon(
        //       Icons.settings,
        //       size: 30,
        //     ),
        //   ],
        // ),
        );
  }
}
