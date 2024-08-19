import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignInCubit/signInCubti.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/IconEyses.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/customTextField.dart';
import 'package:one_plus/core/utils/global/Function/Validator.dart';

import '../../../../../generated/l10n.dart';

class SignInTextFormFields extends StatelessWidget {
  const SignInTextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final str = S.of(context);
    // final themdata=Theme.of(context);
    final controller = context.read<SignInCubit>();

    return Form(key: controller.signInFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(str.email_label),
          CustomTextField(validator: (value) =>  Validator.validateEmail(
                value, str.email_validation_error, str.email_format_error),
              controller: controller.signInEmail, hint: str.email_hint),
          SizedBox(
            height: 15,
          ),
          Text(str.password_label),
          CustomTextField( 
            validator: (value) =>
                Validator.validatePassword(value, str.password_validation_error),
              controller: controller.signInPassword,
              hint: str.password_hint,
              suffix: IconEyes(
                icon: Icons.remove_red_eye,
                onTapIcon: () {},
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
