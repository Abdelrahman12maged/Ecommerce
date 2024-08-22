import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../../../../../core/utils/SizieConfig.dart';

class ProductCircleAvatarItems extends StatelessWidget {
  ProductCircleAvatarItems({super.key, required this.avatarRadius});
  double avatarRadius;
  @override
  Widget build(BuildContext context) {
    // double avatarRadius = SizeConfig.width < SizeConfig.tablet ? 30 : 45;

    double imageSize = SizeConfig.width < SizeConfig.tablet ? 40 : 60;

    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
      child: Column(
        children: [
          CircleAvatar(
            child: Container(
              height: imageSize,
              width: imageSize,
              child: Image.asset(Assets.imagesMouse),
            ),
            radius: avatarRadius,
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "mobilrdphonrd",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
