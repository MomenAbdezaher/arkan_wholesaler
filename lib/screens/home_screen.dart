import 'package:arkan_wholesaler/models/AppBar.dart';
import 'package:arkan_wholesaler/widgets/home/home_body.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'Orders.dart';
import 'Talabat.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List Pages = [HomeBody(), Order()];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: homeAppBar(),
        body: Pages[index],
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: kSecondaryColor,
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
          label: Text(
            "للطلب",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Talabat(),
              ),
            );
          },
        ),
      //   bottomNavigationBar: CustomNavigationBar(
      //   //  borderRadius: Radius.circular(25),
      // //    isFloating: true,
      //     backgroundColor:  kBlueColor,
      //     selectedColor: Colors.white,
      //     currentIndex: index,
      //     onTap: (i) {
      //      setState(() {
      //        index=i;
      //      });
      //     },
      //     items: [
      //       CustomNavigationBarItem(
      //           icon: Icon(Icons.home_work_sharp), title: Text("Home")),
      //       CustomNavigationBarItem(
      //           icon: Icon(Icons.done), title: Text("orders")),
      //     ],
      //   ),
    );
  }
}
