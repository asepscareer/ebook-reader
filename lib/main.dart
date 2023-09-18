import 'package:ebook_reader/sections/list_books.dart';
import 'package:ebook_reader/sections/search_box.dart';
import 'package:flutter/material.dart';

import 'sections/reading_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIdx = 0;

  List<BottomNavigationBarItem> items = const [
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

  void _onItemTapped(int index) {
    setState(() {
      selectedIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          extendBody: true,
          appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 80,
            shadowColor: Colors.white,
            backgroundColor: Colors.white10,
            bottom: const PreferredSize(
              preferredSize: Size(0, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Colors.purple,
                    ),
                    Text(
                      "   E-Book Reader",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SearchBox(),
                const ReadingHistory(),
                myBooks(),
                const ListBooks(),
              ],
            ),
          ),
          bottomNavigationBar: menus(),
        ),
      ),
    );
  }

  Container myBooks() {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(
        left: 5,
        top: 10,
        bottom: 10,
      ),
      child: const Text(
        "My Books",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  BottomNavigationBar menus() {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      items: items,
      iconSize: 25,
      onTap: _onItemTapped,
      currentIndex: selectedIdx,
      selectedItemColor: Colors.purple,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    );
  }
}
