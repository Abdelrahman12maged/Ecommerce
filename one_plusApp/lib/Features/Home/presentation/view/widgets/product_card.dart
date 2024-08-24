import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 227, 225, 225),
      ),

      width: SizeConfig.width < SizeConfig.tablet ? 150 : 250,
      //  color: Colors.amber,
      margin: EdgeInsets.only(right: 15, bottom: 15),

      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // height: 150,
                decoration: BoxDecoration(
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
                fontSize: 14,
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
    );
  }
}

