import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:store_app/screens/add_product_page.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/widgets/nav_bar_widget.dart';


class CustomBottomNav extends StatelessWidget {

  final int currentIndex;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 70,
            color: Colors.white.withValues(alpha: 0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomNavItem(
                  icon: const Icon(Icons.home),
                  label: 'Home',
                  isSelected: currentIndex == 0,
                  onPressed: () {
                    if (currentIndex != 0) {
                      Navigator.pushReplacementNamed(context, Home.id);
                    }
                  },
                ),
                CustomNavItem(
                  icon: const Icon(Icons.add),
                  label: 'Add',
                  isSelected: currentIndex == 1,  
                  onPressed: () {
                    if (currentIndex != 1) {
                      Navigator.pushReplacementNamed(context, AddProductPage.id);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}