import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

import '../../../../../../core/utils/SizieConfig.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? background;
  final VoidCallback function;
  final String text;

  const CustomButton({
    Key? key,
     this.width,
     this.height,
    this.background  ,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       SizeConfig.init(context);

    double buttonWidth = SizeConfig.width * 0.3;
    //double buttonHeight = SizeConfig.height * 0.3;

     buttonWidth = buttonWidth.clamp(20.0, 120.0);
   //  buttonHeight = buttonHeight.clamp(20.0, 35.0);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: background ?? AppColorsLight.customButtonMaincolor,
      ),
      width: width ?? buttonWidth,
      height: height ,
      child: MaterialButton(
        onPressed: function,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium,
            // TextStyle(
            //   color: Color.fromARGB(255, 231, 224, 224),
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
        ),
      ),
    );
  }
}
