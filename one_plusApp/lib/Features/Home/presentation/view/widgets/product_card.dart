// import 'package:flutter/material.dart';
// import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';

// class ProductCard extends StatelessWidget {
//   final String imageUrl;
//   final String productName;
//   final double price;

//   ProductCard({
//     required this.imageUrl,
//     required this.productName,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // final size = MediaQuery.of(context).size;
//     // final isSmallScreen = size.width < 600;

//     return Row(
//       children: [
//         Card(
//           margin: EdgeInsets.all(16),
//           elevation: 5,
//           child: AspectRatio( aspectRatio: 420 / 215,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Container(
                  
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       image: DecorationImage(
//                         image: AssetImage(imageUrl),
//                         fit: BoxFit.contain,
//                       ),
//                       // borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                 ),
             
//                 Text(
//                   productName,
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
              
//                 Text(
//                   '\$${price.toStringAsFixed(2)}',
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.green,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CustomButton(
//                     width: double.infinity, function: () {}, text: "add to cart")
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';

import '../../../../../core/utils/assetsImages.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double price;

  ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,// Adjust the width as needed
      child: Card(
        margin: EdgeInsets.all(16),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 420/ 220,
                child: Container(
                  decoration: BoxDecoration(color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            SizedBox(height: 16),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
             SizedBox(height: 8),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16),
              CustomButton(
                width: double.infinity,
                function: () {},
                text: "Add to Cart",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductListView extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "imageUrl": Assets.imagesBoAt2,
      "productName": "Product 1",
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

