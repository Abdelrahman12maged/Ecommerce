import 'package:flutter/material.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_card.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class ProductListView extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "imageUrl": Assets.imagesBoAt2,
      "productName":
          "Product1hkjjjjjjjfggggggggggggggggggggggggggggggggggggggggggggjjjghhhhjjjjj",
      "price": 29.99,
    },

    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Set the height for the list view
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            imageUrl: products[0]['imageUrl'],
            productName: products[0]['productName'],
            price: products[0]['price'],
          );
        },
      ),
    );
  }
}
