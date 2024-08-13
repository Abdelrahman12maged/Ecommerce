import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';

import '../../Features/Auth/presentation/view/component/widgets/SearchProductTextField.dart';
import '../../generated/l10n.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.onTapButton, required this.textButton});
  final VoidCallback onTapButton;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    double buttonWidth = SizeConfig.width * 0.3;
    double buttonHeight = SizeConfig.height * 0.3;

    buttonWidth = buttonWidth.clamp(60.0, 100.0);
    buttonHeight = buttonHeight.clamp(20.0, 32.0);
    return AppBar(
      leading: Container(),
      actions: [
      
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "ONE 1+ PLUS",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              SizeConfig.width >= SizeConfig.tablet?    Expanded(child: SizedBox()):Container(),
                SizeConfig.width >= SizeConfig.tablet
                    ? Expanded(flex: 2, child: SearchProductTextField())
                    : Container(),
              SizeConfig.width >= SizeConfig.tablet?    Expanded(child: SizedBox()):Container(),
                CustomButton(
                  height: 40,
                  function: onTapButton,
                  text: textButton,
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
