import 'package:flutter/material.dart';
import 'package:store_app/screens/update_product.dart';

import '../models/product_model.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
     Key? key,
     required this.product
   }) : super(key: key);


  ProductModel  product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 0,
                  offset:const Offset(10, 10))
            ]),
            child: Card(
              elevation: 12,
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6),
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const  SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(r"$""${product.price.toString()}",
                          style: const TextStyle(fontSize: 16),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            bottom: 90,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
