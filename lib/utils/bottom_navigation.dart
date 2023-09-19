import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIdx = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      items: _items,
      iconSize: 25,
      onTap: _onItemTapped,
      currentIndex: selectedIdx,
      selectedItemColor: Colors.purple,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    );
  }

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Icon(Icons.menu_book_rounded),
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Icon(Icons.shopping_bag_rounded),
      ),
      label: "Store",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Icon(Icons.bookmark_rounded),
      ),
      label: "Bookmarks",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Icon(Icons.settings),
      ),
      label: "Settings",
    ),
  ];
}
