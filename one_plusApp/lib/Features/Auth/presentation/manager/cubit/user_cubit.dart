import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_state.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/params/params.dart';

class SignUpCubit extends Cubit<SignUPState> {
  SignUpCubit() : super(UserInitial());
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();
  SignUPcubit(SingUpParams params) async {
    emit(SignUPLoading());

    final result = await SignUpUseCase(
            baseAuthrepo: ImpAuthRepo(
                baseAuthRemoteDataSource:
                    AuthRemoteData(apiservice: DioConsumer(dio: Dio()))))
        .call(SingUpParams(
            name: params.name, email: params.email, password: params.password));
    // final failureOrUser = await GetUser(
    //   repository: UserRepositoryImpl(
    //       remoteDataSource: UserRemoteDataSource(api: DioConsumer(dio: Dio())),
    //       localDataSource: UserLocalDataSource(cache: CacheHelper()),
    //       networkInfo: NetworkInfoImpl(DataConnectionChecker())),
    // ).call(
    //   params: UserParams(
    //     id: id.toString(),
    //   ),
    // );

    result.fold(
      (failure) => emit(SignUPFailure(errMessage: failure.errormessage)),
      (user) => emit(SignUPSuccessfully(user: user)),
    );
  }
}
