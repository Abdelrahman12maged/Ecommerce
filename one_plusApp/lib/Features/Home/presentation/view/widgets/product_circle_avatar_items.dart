import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class productCirclAvatarItems extends StatelessWidget {
  const productCirclAvatarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: AssetImage(Assets.imagesBackground),);
  }
}