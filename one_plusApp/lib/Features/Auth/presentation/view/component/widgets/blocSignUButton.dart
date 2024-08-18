import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/Custombutton.dart';

import '../../../../../../core/params/params.dart';
import '../../../../../../generated/l10n.dart';
import '../../../manager/cubit/user_cubit.dart';
import '../../../manager/cubit/user_state.dart';

class BlocSignUpButton extends StatelessWidget {
  const BlocSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitdata = context.read<UserCubit>();

    return BlocConsumer<UserCubit, UserStates>(
      listener: (context, state) {
        if (state is SignUPLoading) {
          print('loading');
        } else if (state is SignUPSuccessfully) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("sucess")));
        } else if (state is SignUPFailure) {
          print(state.errMessage);
  
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${state.errMessage}")));
        
          // print(state.errMessage['message']);
          // ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text("${state.errMessage['message']}")));
        } else {
          print('another state');
        }
      },
      builder: (context, state) {
        return (CustomButton(
          height: 40,
          function: () {
            if (cubitdata.signUpFormKey.currentState!.validate()) {
              BlocProvider.of<UserCubit>(context).SignUp(UserParams(
                name: cubitdata.signUpName.text,
                email: cubitdata.signUpEmail.text,
                password: cubitdata.signUpPassword.text,
              ));
            }
          },
          text: S.of(context).sign_up,
        ));
      },
    );
  }
}
