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
                key: context.read<UserCubit>().signUpFormKey,
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
