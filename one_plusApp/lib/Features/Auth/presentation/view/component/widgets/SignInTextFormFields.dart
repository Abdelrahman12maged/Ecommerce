import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/IconEyses.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';

import '../../../../../../generated/l10n.dart';

class SignInTextFormFields extends StatelessWidget {
  const SignInTextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final str = S.of(context);
   // final themdata=Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Text(str.email_label),
        CustomTextField(hint: str.email_hint),
        SizedBox(
          height: 15,
        ),
        Text(str.password_label ),
        CustomTextField(
            hint: str.password_hint,
            suffix: IconEyes(
              function: () {},
            )),
        SizedBox(
          height: 20,
        ),
     
      ],
    );
  }
}
