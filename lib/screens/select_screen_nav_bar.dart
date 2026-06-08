import 'package:flutter/material.dart';
import 'package:store_app/screens/add_product_page.dart';
import 'package:store_app/screens/home.dart';

class SelectScreenNavBar extends StatefulWidget {
  const SelectScreenNavBar({super.key});
   static String id = 'select_screen_nav_bar';

  @override
  State<SelectScreenNavBar> createState() => _SelectScreenNavBarState();
}

class _SelectScreenNavBarState extends State<SelectScreenNavBar> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    const Home(),
    const AddProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        height: 60,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.grey[300],
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.red),
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add_box_sharp, color: Colors.red),
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            label: 'Add',
          ),
        ],
      ),
    );
  }
}