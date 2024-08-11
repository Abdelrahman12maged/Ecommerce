
import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../../../../../../generated/l10n.dart';

class CustomUploadImageAvatar extends StatelessWidget {
  const CustomUploadImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
         final themdata=Theme.of(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(Assets.imagesSignin),
        ),
        Positioned(
          bottom: 0,
        
  
          child: Container(

            decoration: BoxDecoration(  
                     color: Colors.white.withOpacity(0.3),

              shape: BoxShape.circle),
            height: 80,
            width: 90,
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Center(
              child: Text(
                S.of(context).uploadimageCirclAvatar,
                style:themdata.textTheme.bodySmall
              ),
            ),
          ),
        ),
      ],
    );
  }
}
