import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/IconEyses.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';
import '../../../../../../core/utils/global/Function/Validator.dart';
import '../../../../../../generated/l10n.dart';

class SignUPTextFormFields extends StatelessWidget {
  SignUPTextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<UserCubit>();

    final str = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(str.name_label),
        CustomTextField(
          controller: controller.signUpName,
          hint: str.name_hint,
          validator: (value) =>
              Validator.validateName(value, str.name_validation_error),
        ),
        SizedBox(height: 15),
        Text(str.email_label),
        CustomTextField(
          controller: controller.signUpEmail,
          hint: str.email_hint,
          validator: (value) => Validator.validateEmail(
              value, str.email_validation_error, str.email_format_error),
        ),
        SizedBox(height: 15),
        Text(str.password_label),
        CustomTextField(
          //    obscure: controller.isShowPassword,
          controller: controller.signUpPassword,
          hint: str.password_hint,
          suffix: IconEyes(icon: Icons.remove_red_eye, onTapIcon: () {}),
          validator: (value) =>
              Validator.validatePassword(value, str.password_validation_error),
        ),
        SizedBox(height: 20),
        Text(str.confirm_password_label),
        CustomTextField(
          //  obscure: controller.isShowPassword,
          controller: controller.confirmPassword,
          hint: str.confirm_password_hint,
          suffix: IconEyes(
              icon: Icons.remove_red_eye,
              onTapIcon: () {
                // controller.showpasswtoggle();
                // if (isShowPassword == true) {
                //   setState(() {
                //     isShowPassword = false;
                //   });
                // } else {
                //   setState(() {
                //     isShowPassword = true;
                //   });
                // }
              }),
          validator: (value) => Validator.validateConfirmPassword(
              value,
              controller.signUpPassword.text,
              str.confirm_password_validation_error,
              str.confirm_password_mismatch),
        ),
      ],
    );
  }
}
