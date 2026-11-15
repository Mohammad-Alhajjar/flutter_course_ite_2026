import 'package:demo_2/pages/home_page.dart';
import 'package:demo_2/pages/library_page.dart';
import 'package:demo_2/pages/map_page.dart';
import 'package:flutter/material.dart';

class MainNavBarPage extends StatefulWidget {
  const MainNavBarPage({super.key});

  @override
  State<MainNavBarPage> createState() => _MainNavBarPageState();
}

class _MainNavBarPageState extends State<MainNavBarPage> {
  int selectedIndex = 0;
  List<Widget> pages = [HomePage(), LibraryPage(), MapPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.green,
        indicatorColor: Colors.amber,
        selectedIndex: selectedIndex,
        onDestinationSelected: (int newIndex) {
          print(newIndex);
          setState(() {
            selectedIndex = newIndex;
          });
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books_outlined),
            selectedIcon: Icon(Icons.library_books),
            label: 'Library',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.location_on),
            icon: Icon(Icons.location_on_outlined),
            label: 'Map',
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
