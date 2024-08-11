
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
       // final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: containerWidth,
      //   height: containerHeight,
      color: Theme.of(context).colorScheme.background,
       //isDarkMode ?Colors.black:Colors.white
      
     child:child ,
       // إضافة محتوى الحاوية
    );
  }
}