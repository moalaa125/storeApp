import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:store_app/screens/add_product_page.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/widgets/nav_bar_widget.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Home(),
    AddProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildNavBar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 70,
            color: const Color.fromARGB(255, 200, 200, 200).withValues(alpha: 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomNavItem(
                  icon: const Icon(Icons.home),
                  label: 'Home',
                  isSelected: _currentIndex == 0,
                  onPressed: () => setState(() => _currentIndex = 0),
                ),
                CustomNavItem(
                  icon: const Icon(Icons.add),
                  label: 'Add',
                  isSelected: _currentIndex == 1,
                  onPressed: () => setState(() => _currentIndex = 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}