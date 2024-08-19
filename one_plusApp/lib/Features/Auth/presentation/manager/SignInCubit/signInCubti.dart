import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignInCubit/SignIn_states.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/params/params.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit(this.signInUsecase) : super(SignInInitial());
  GlobalKey<FormState> signInFormKey = GlobalKey();

  TextEditingController signInName = TextEditingController();

  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  
  
  final SignInUsecase signInUsecase;


  SignIn(UserParams params) async {
    emit(SignInLoading());

    final result = await signInUsecase(params);

    result.fold(
      (failure) => emit(SignInFailure(errMessage: failure.errormessage)),
      (res) => emit(SignInSuccessfully(response: res)),
    );
  }
}
