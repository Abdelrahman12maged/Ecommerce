
import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/SignUpLayout.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../../../../../core/utils/SizieConfig.dart';

class SignUpDesktopLayout extends StatelessWidget {
  const SignUpDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        
        image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(Assets.imagesBackground))),
      child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: SignUpLayout(alignment: Alignment.centerRight,
            containerWidth: SizeConfig.width * 0.3,
            paddingcontainerVertical: 50),
      ),
    );
  }
}