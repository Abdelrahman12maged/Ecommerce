import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignInCubit/SignIn_states.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignInCubit/signInCubti.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

import '../../../../../core/params/params.dart';
import '../../../../../core/utils/appRouter.dart';
import '../../../../../generated/l10n.dart';
import '../../manager/SignUpCubit/signup_cubit.dart';
import '../../manager/SignUpCubit/signup_state.dart';
import 'package:toast/toast.dart';

class BlocSignInButton extends StatelessWidget {
  const BlocSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitdata = context.read<SignInCubit>();

    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SignInSuccessfully) {
           GoRouter.of(context).push(AppRouter.kHomeView);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.response.message.toString())));
        } else if (state is SignInFailure) {
          print(state.errMessage);

          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("${state.errMessage}")));
        }
      },
      builder: (context, state) {
        return state is SignInLoading
            ? CircularProgressIndicator(
                color: AppColorsLight.customButtonMaincolor,
              )
            : CustomButton(
                height: 40,
                function: () {
                  if (cubitdata.signInFormKey.currentState!.validate()) {
                    BlocProvider.of<SignInCubit>(context).SignIn(UserParams(
                      email: cubitdata.signInEmail.text,
                      password: cubitdata.signInPassword.text,
                    ));
                  }
                },
                text: S.of(context).login,
              );
      },
    );
  }
}
