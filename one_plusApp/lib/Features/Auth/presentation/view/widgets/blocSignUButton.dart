import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

import '../../../../../core/params/params.dart';
import '../../../../../generated/l10n.dart';
import '../../manager/SignUpCubit/signup_cubit.dart';
import '../../manager/SignUpCubit/signup_state.dart';

class BlocSignUpButton extends StatelessWidget {
  const BlocSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitdata = context.read<SignUpCubit>();

    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) {
       if (state is SignUPSuccessfully) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("sucess")));
        } else if (state is SignUPFailure) {
          print(state.errMessage);

          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("${state.errMessage}")));

        } 
      },
      builder: (context, state) {
        
        return
        state is SignUPLoading? CircularProgressIndicator(color: AppColorsLight.customButtonMaincolor,):
         CustomButton(
          height: 40,
          function: () {
            if (cubitdata.signUpFormKey.currentState!.validate()) {
              BlocProvider.of<SignUpCubit>(context).SignUp(UserParams(
                name: cubitdata.signUpName.text,
                email: cubitdata.signUpEmail.text,
                password: cubitdata.signUpPassword.text,
              ));
            }
          },
          text: S.of(context).sign_up,
        );
      },
    );
  }
}
