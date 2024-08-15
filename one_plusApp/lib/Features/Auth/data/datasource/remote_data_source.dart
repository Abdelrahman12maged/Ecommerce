import 'package:dartz/dartz.dart';
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

  // @override
  // Future<UserModel> signUp(SingUpParams params) async {

  //   final response = await apiservice.post(
  //     EndPoints.signUpUrl,
  //     data: {
  //       'name': params.name,
  //       "email": params.email,
  //       "password": params.password
  //     },
  //   );
  //     final user = UserModel.fromJson(response['user']);

  //     return user;

  // }
  Future<UserModel> signUp(SingUpParams params) async {
    final response = await apiservice.post(
      EndPoints.signUpUrl,
      data: {
        'name': params.name,
        'email': params.email,
        'password': params.password,
      },
    );
 //   print(response);

   // if (response['success'] == true) {
      return UserModel.fromJson(response['user']);
    // } else {
    //   throw ServerException(ErrorModel.fromJson(response));
    // }
  }
}
// class AuthRemoteData {
//   final ApiConsumer apiService;

//   AuthRemoteData({required this.apiService});

//   Future<UserModel> signUp(SingUpParams params) async {
//     try {
//       final response = await apiService.post(
//         EndPoints.signUpUrl,
//         data: {
//           'name': params.name,
//           "email": params.email,
//           "password": params.password,
//         },
//       );

//       // Assume the response has a 'user' key for the user data
//       return UserModel.fromJson(response['user']);
//     } catch (e) {
//       if (e is DioException) {
//         throw handleDioException(e);
//       } else {
//         print("===========$e");
//       }
//       // This should throw the correct custom exception
//     }
//   }
// }
