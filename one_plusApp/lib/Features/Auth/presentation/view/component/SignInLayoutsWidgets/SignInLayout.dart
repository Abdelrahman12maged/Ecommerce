
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/CustomUploadImageAvatar.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/SignInTextFormFields.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/SignUpTextFormFields.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/textHaveOrNotHaveAccount.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../../../../../../generated/l10n.dart';
import '../widgets/CustomBackGroundContainer.dart';

class SignInLayout extends StatelessWidget {
   SignInLayout({super.key,required this.containerWidth,required this.paddingcontainerVertical});
    double containerWidth;
    double paddingcontainerVertical;

  @override
  Widget build(BuildContext context) {
   // SizeConfig.init(context);
    final str = S.of(context);

    containerWidth = containerWidth.clamp(300.0, 800.0);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: paddingcontainerVertical),
          child: CustomBackGroundContainer(
              containerWidth: containerWidth,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                    SizedBox(
                      height: 15,
                    ),
                    SignInTextFormFields(),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: CustomButton(
                        height: 40,
                        function: () {}, text: str.login),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    textHaveOrNotHaveAccount(
                      text1: str.have_not_account,
                      onTapText2: () {},
                      text2: str.sign_up,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
