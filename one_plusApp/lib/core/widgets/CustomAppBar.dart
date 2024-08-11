import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';

import '../../Features/Auth/presentation/view/component/widgets/SearchProductTextField.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    double buttonWidth = SizeConfig.width * 0.3;
    double buttonHeight = SizeConfig.height * 0.3;

    buttonWidth = buttonWidth.clamp(60.0, 100.0);
    buttonHeight = buttonHeight.clamp(20.0, 32.0);
    return AppBar(
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Text(
                  "ONE PLUS",
                  style: TextStyle(color: Colors.black),
                ),
                Expanded(child: SizedBox()),
                Expanded(flex: 2, child: SearchProductTextField()),
                Expanded(child: SizedBox()),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  function: () {},
                  text: "Login",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
