import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';

import '../../Features/Auth/presentation/view/component/widgets/SearchProductTextField.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
  
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Text(
                    "ONE PLUS",
                    style: TextStyle(color: Colors.black),
                  ),
                   Expanded(child: SizedBox()),
            
                SearchProductTextField(),
             Expanded(child: SizedBox()),
                CustomButton(
                  width: 100,
                  height: 30,
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

