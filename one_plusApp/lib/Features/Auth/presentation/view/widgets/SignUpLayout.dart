import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignUpCubit/signup_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignUpCubit/signup_state.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/CustomUploadImageAvatar.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/SignUpTextFormFields.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/blocSignUButton.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/textHaveOrNotHaveAccount.dart';

import '../../../../../core/params/params.dart';
import '../../../../../generated/l10n.dart';
import 'CustomBackGroundContainer.dart';

// ignore: must_be_immutable
class SignUpLayout extends StatelessWidget {
  SignUpLayout(
      {super.key,
      required this.containerWidth,
      required this.paddingcontainerVertical,required this.alignment});
  double containerWidth;
  double paddingcontainerVertical;
  AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    final str = S.of(context);

    containerWidth = containerWidth.clamp(300.0, 800.0);
    return SingleChildScrollView(
      child: Align(
        alignment: alignment,
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
                    SignUPTextFormFields(),
                    SizedBox(height: 25),
                    Center(
                      child: BlocSignUpButton(),
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
