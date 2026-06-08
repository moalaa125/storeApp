import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<ProductModel>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = AllProductsService().getAllProducts();
  }

  var _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.add,
    Icons.update,
    Icons.delete,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.red,
        icons: [iconList[0], iconList[1], iconList[2], iconList[3]],
        activeIndex: _bottomNavIndex,
        gapWidth: 10,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
        title: Text('New Trend'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 80),
            child: FutureBuilder<List<ProductModel>>(
              future: futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(color: Colors.black),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Oops! An error occurred: \n${snapshot.error}'),
                  );
                } else if (snapshot.hasData) {
                  List<ProductModel> products = snapshot.data!;

                  return GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 100,
                    ),
                    itemBuilder: (context, index) {
                      return CustomCard(product: products[index]);
                    },
                  );
                } else {
                  return Center(child: Text('No products found.'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
