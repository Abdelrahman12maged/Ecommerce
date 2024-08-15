import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_state.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/CustomUploadImageAvatar.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/SignUpTextFormFields.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/blocSignUButton.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/textHaveOrNotHaveAccount.dart';

import '../../../../../../core/params/params.dart';
import '../../../../../../generated/l10n.dart';
import '../widgets/CustomBackGroundContainer.dart';

// ignore: must_be_immutable
class SignUpLayout extends StatelessWidget {
  SignUpLayout(
      {super.key,
      required this.containerWidth,
      required this.paddingcontainerVertical});
  double containerWidth;
  double paddingcontainerVertical;

  // final formKey = GlobalKey<FormState>();
  // final _nameController = TextEditingController();
  // final _emailController = TextEditingController();
  // final context.read<SignUpCubit>().signUpPassword = TextEditingController();
  // final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final str = S.of(context);

    containerWidth = containerWidth.clamp(300.0, 800.0);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: paddingcontainerVertical),
          child: CustomBackGroundContainer(
            containerWidth: containerWidth,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Form(
                key: context.read<SignUpCubit>().signUpFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: CustomUploadImageAvatar()),
                    SizedBox(height: 15),
                    SignUPTextFormFields(
                      nameController: context.read<SignUpCubit>().signUpName,
                      emailController: context.read<SignUpCubit>().signUpEmail,
                      passwordController: context.read<SignUpCubit>().signUpPassword,
                      confirmPasswordController: context.read<SignUpCubit>().confirmPassword,
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: BlocSignUpButton(
                          formKey: context.read<SignUpCubit>().signUpFormKey,
                          nameController: context.read<SignUpCubit>().signUpName,
                          emailController: context.read<SignUpCubit>().signUpEmail,
                          passwordController: context.read<SignUpCubit>().signUpPassword,
                          str: str),
                    ),
                    SizedBox(height: 25),
                    textHaveOrNotHaveAccount(
                      text1: str.have_account,
                      onTapText2: () {},
                      text2: str.login,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
