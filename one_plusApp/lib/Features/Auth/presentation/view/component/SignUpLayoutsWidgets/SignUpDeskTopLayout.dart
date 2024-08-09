// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class SignUpDesktopLayout extends StatelessWidget {
//   const SignUpDesktopLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 600,
//         height: 500,
//           color: Colors.white,

//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/CustomUploadImageAvatar.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/TextFormFields.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/textHaveOrNotHaveAccount.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../widgets/CustomBackGroundContainer.dart';

class SignUpDesktopLayout extends StatelessWidget {
  const SignUpDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    double containerWidth = SizeConfig.width * 0.3;

    containerWidth = containerWidth.clamp(300.0, 800.0);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CustomBackGroundContainer(
              containerWidth: containerWidth,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: CustomUploadImageAvatar()),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormFields(),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: CustomButton(height: 40,
                          function: () {
                            
                          }, text: "sign up", width: 130),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    textHaveOrNotHaveAccount(text1: "Already have  account?  ",onTapText2: () {
                      
                    },text2: "Login",)
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
