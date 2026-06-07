import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.2),
                  spreadRadius: .1,
                  blurRadius: 10,
                  offset: Offset(0, 9),

                )
              ]
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hand bag LV', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'255$'),
                      IconButton(
                        onPressed: null,
                        icon: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -60,
          left: 80,
          child: Image.network(
            'https://imgs.search.brave.com/bCwh6RKbbX8ALNxrX-EhtYS-iOvuj6eW-FvInd_tkA0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMTIv/MjI4LzQzOS9zbWFs/bC9wYXBlci1zaG9w/cGluZy1iYWctaXNv/bGF0ZWQtd2l0aC1j/bGlwcGluZy1wYXRo/LWZvci1tb2NrdXAt/ZnJlZS1wbmcucG5n',
            height: 100,
          ),
        ),
      ],
    );
  }
}
