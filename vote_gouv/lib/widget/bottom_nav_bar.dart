import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar(
      {Key? key, required this.color, required this.selectedIndex, required this.onTap})
      : super(key: key);
  final int selectedIndex;
  final Color color;
  final void Function(int) onTap;
  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.how_to_vote),
          label: 'Vote',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          label: 'Résultat',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: widget.color,
      onTap: widget.onTap,
    );
  }
}
