import 'package:arkan_wholesaler/models/product.dart';
import 'package:arkan_wholesaler/screens/Talabat.dart';
import 'package:arkan_wholesaler/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product});

  @override

  Widget build(BuildContext context) {
    // to provide us the height and the width of the sceen
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${product.price}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
        Center(
          child: FloatingActionButton.extended(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Talabat()));
          },
          label: Text("اطلب الان"),
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        )
      ],
    );
  }
}
