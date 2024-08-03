
import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.containerWidth,
    required this.child
  });

  final double containerWidth;
    final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      //   height: containerHeight,
      color: Colors.white,
     child:child ,
       // إضافة محتوى الحاوية
    );
  }
}