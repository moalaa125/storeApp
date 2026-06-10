import 'package:flutter/material.dart';

class CustomNavItem extends StatelessWidget {
  final Icon icon;
  final String label;
  final bool isSelected;
  final Function()? onPressed;

  const CustomNavItem({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon.icon,
              size: 20,
              color: isSelected ? Color(0xFF4d41df) : Colors.black54,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Color(0xFF4d41df) : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
