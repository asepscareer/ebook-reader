import 'package:ebook_reader/sections/search_box.dart';
import 'package:ebook_reader/utils/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'sections/list_books.dart';
import 'sections/reading_history.dart';
import 'utils/screen_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, Key? type});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final responsive = Responsive(screenWidth);

    String deviceDetector() => responsive.isMobile()
        ? 'Mobile'
        : responsive.isTablet()
            ? 'Tablet'
            : 'PC';

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
              bottom: ebookAppBar(deviceDetector())),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SearchBox(),
                const ReadingHistory(),
                myBooks(),
                const ListBooks(),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigation(),
        ),
      ),
    );
  }

  PreferredSize ebookAppBar(String device) {
    return PreferredSize(
      preferredSize: const Size(0, 0),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            const Icon(
              Icons.book_outlined,
              color: Colors.purple,
            ),
            Text(
              " E-Book Reader $device",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
}
