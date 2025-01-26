import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsImages.dart';

class UserInfoCircleAvtar extends StatelessWidget {
  const UserInfoCircleAvtar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(Assets.imagesSignin),

        ),
        Text("abdo maged")
      ],
    );
  }
}
