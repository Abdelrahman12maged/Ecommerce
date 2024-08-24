import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'product_circle_avatar_items.dart';

class ProductCategorylistItems extends StatelessWidget {
  const ProductCategorylistItems({super.key});

  @override
  Widget build(BuildContext context) {
    double avatarRadius = SizeConfig.width < SizeConfig.tablet ? 45 : 50;
    double avatarHeight = SizeConfig.width < SizeConfig.tablet
        ? avatarRadius * 3.2
        : avatarRadius * 2.9;

    return Container(
    //  width: MediaQuery.of(context).size.width,
      height: avatarHeight,
      //color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) =>
            ProductCircleAvatarItems(avatarRadius: avatarRadius),
      ),
    );
  }
}
