
import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class CustomUploadImageAvatar extends StatelessWidget {
  const CustomUploadImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          width: 80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(Assets.imagesSignin),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: 80,
                  color: Colors.white.withOpacity(0.9),
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Center(
                    child: Text(
                      'Upload Image',
                      style: TextStyle(
    fontSize: 10,
    color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
