import 'package:dartz/dartz.dart';
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';
import 'package:one_plus/Features/Auth/data/models/userModel.dart';

import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:one_plus/Features/Auth/data/models/userModel.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/core/databases/api/api_consumer.dart';
import 'package:one_plus/core/databases/api/end_points.dart';
import 'package:one_plus/core/errors/error_model.dart';
import 'package:one_plus/core/errors/expentions.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/params/params.dart';

// abstract class baseAuthRemotData {
//   Future<UserModel> signUp(SingUpParams params);
//   // Future<UserModel> signIn();
// }

class AuthRemoteData {
  final ApiConsumer apiservice;

  AuthRemoteData({required this.apiservice});


  Future<UserModel> signUp(UserParams params) async {
    final response = await apiservice.post(
      EndPoints.signUpUrl,
      data: {
        'name': params.name,
        'email': params.email,
        'password': params.password,
      },
    );

      return UserModel.fromJson(response['user']);
   
  }

  Future<SignInModel> signIn(UserParams params) async {
    final response = await apiservice.post(
      EndPoints.signInUrl,
      data: {
      
        'email': params.email,
        'password': params.password,
      },
    );

       return SignInModel.fromJson(response);
   
  }
}
