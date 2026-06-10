import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/screens/add_product_page.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          routes: {
            Home.id: (context) => Home(),
            UpdateProductPage.id: (context) => UpdateProductPage(),
            AddProductPage.id: (context) => AddProductPage(),
          },
          initialRoute: Home.id,
        );
      },
    );
  }
}