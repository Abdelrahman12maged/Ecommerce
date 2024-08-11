import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/IconEyses.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';

import '../../../../../../generated/l10n.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final str = S.of(context);
    final themdata=Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(str.name_label,style:themdata.textTheme.bodyMedium ,),
        CustomTextField(hint: str.name_hint),
        SizedBox(
          height: 15,
        ),
        Text(str.email_label,style:themdata.textTheme.bodyMedium ),
        CustomTextField(hint: str.email_hint),
        SizedBox(
          height: 15,
        ),
        Text(str.password_label,style:themdata.textTheme.bodyMedium ),
        CustomTextField(
            hint: str.password_hint,
            suffix: IconEyes(
              function: () {},
            )),
        SizedBox(
          height: 20,
        ),
        Text(str.confirm_password_label,style:themdata.textTheme.bodyMedium ),
        CustomTextField(
          hint: str.confirm_password_hint,
          suffix: IconEyes(
            function: () {},
          ),
        ),
      ],
    );
  }
}
