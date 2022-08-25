import 'package:flutter/material.dart';

import 'bottom_bar_screen.dart';

class Home extends StatefulWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile man"),
  ];
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        child: Home._widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomBar(
        onTap: _onItemTap,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
