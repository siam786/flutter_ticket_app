import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key, required this.onTap, required this.currentIndex}) : super(key: key);
  final void Function(int) onTap;
  final int currentIndex; 

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.green,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: "Ticket",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "Person",
        )
      ],
    );
  }
}
