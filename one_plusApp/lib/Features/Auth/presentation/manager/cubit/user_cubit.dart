import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_state.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/params/params.dart';

class UserCubit extends Cubit<UserStates> {
  UserCubit(this.signUpUseCase, this.signInUsecase) : super(UserInitial());
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  TextEditingController signUpName = TextEditingController();

  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  // bool isShowPassword = true;

  // showpasswtoggle() {
  //   if (isShowPassword) {
  //     isShowPassword = false;
  //   } else {
  //     isShowPassword = true;
  //   }
  // }
  final SignUpUseCase signUpUseCase;
  final SignInUsecase signInUsecase;
  SignUp(UserParams params) async {
    emit(SignUPLoading());

    final result = await signUpUseCase(params);

    result.fold(
      (failure) => emit(SignUPFailure(errMessage: failure.errormessage)),
      (user) => emit(SignUPSuccessfully(user: user)),
    );
  }

  SignIn(UserParams params) async {
    emit(SignInLoading());

    final result = await signInUsecase(params);

    result.fold(
      (failure) => emit(SignInFailure(errMessage: failure.errormessage)),
      (res) => emit(SignInSuccessfully( response: res)),
    );
  }
}
