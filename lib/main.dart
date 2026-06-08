import 'package:flutter/material.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.id: (context) => Home(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
      },
      initialRoute: Home.id,

      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
