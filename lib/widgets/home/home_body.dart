import 'package:arkan_wholesaler/models/product.dart';
import 'package:arkan_wholesaler/screens/details_screen.dart';
import 'package:arkan_wholesaler/widgets/home/product_cart.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import '../../constants.dart';

class HomeBody extends StatelessWidget {
  List Images = ["images/P1.png", "images/P2.png", "images/P3.png"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          CarouselSlider(
            items: Images.map(
              (img) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  height: 400,
                  width: 400,
                  child: Image.asset(
                    img,
                    fit: BoxFit.fill,
                    height: 400,
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(height: 150, autoPlay: true),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 3, //products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
