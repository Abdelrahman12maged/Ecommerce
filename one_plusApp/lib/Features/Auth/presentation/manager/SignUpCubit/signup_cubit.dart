import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignUpCubit/signup_state.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/params/params.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  TextEditingController signUpName = TextEditingController();

  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  
  final SignUpUseCase signUpUseCase;
  SignUp(UserParams params) async {
    emit(SignUPLoading());

    final result = await signUpUseCase(params);

    result.fold(
      (failure) => emit(SignUPFailure(errMessage: failure.errormessage)),
      (user) => emit(SignUPSuccessfully(user: user)),
    );
  }

 
}
