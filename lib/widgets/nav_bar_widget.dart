import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      borderRadius: BorderRadius.circular(10.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon.icon,
              size: 15.sp,
              color: isSelected ? Color(0xFF4d41df) : Colors.black54,
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelected ? Color(0xFF4d41df) : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}