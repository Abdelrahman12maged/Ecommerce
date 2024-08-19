import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

class IconEyes extends StatelessWidget {
  const IconEyes({
    super.key,required this.onTapIcon, required this.icon
  });
  final VoidCallback onTapIcon;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapIcon,
        child: Icon(
         icon,
         color:AppColorsLight.icon_eyesColor,
        ));
  }
}
