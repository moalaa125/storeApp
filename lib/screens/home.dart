import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/widgets/custom_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
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
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 80),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 100,
          ),
          itemBuilder: (context, index) => CustomCard(),
        ),
      ),
    );
  }
}
