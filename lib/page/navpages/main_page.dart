// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/navpages/bar_item.dart';
import 'package:flutter_application_1/page/navpages/home_page.dart';
import 'package:flutter_application_1/page/navpages/my_page.dart';
import 'package:flutter_application_1/page/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Colors.green[900],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.apps_outlined), // Wrap Icons.apps with Icon widget
          ),
          const BottomNavigationBarItem(
            label: "Bar",
            icon:
                Icon(Icons.bar_chart_sharp), // Wrap Icons.apps with Icon widget
          ),
          const BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search), // Wrap Icons.apps with Icon widget
          ),
          const BottomNavigationBarItem(
            label: "My",
            icon: Icon(Icons.person), // Wrap Icons.apps with Icon widget
          ),
        ],
      ),
    );
  }
}
