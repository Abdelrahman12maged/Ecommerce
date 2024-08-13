import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

class IconEyes extends StatelessWidget {
  const IconEyes({
    super.key,required this.function
  });
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: Icon(
          Icons.remove_red_eye,
         color:AppColorsLight.icon_eyesColor,
        ));
  }
}
