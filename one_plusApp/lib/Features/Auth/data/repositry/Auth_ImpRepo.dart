import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/Features/Auth/domain/repositry/base_Auth_repo.dart';
import 'package:one_plus/core/errors/expentions.dart';
import 'package:one_plus/core/errors/failu.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/params/params.dart';
import '../datasource/remote_data_source.dart';

// class ImpAuthRepo extends baseAuthRepo {
//   final AuthRemoteData baseAuthRemoteDataSource;
//  //final NetworkInfo networkInfo;
//   //final UserLocalDataSource localDataSource;
//   ImpAuthRepo({required this.baseAuthRemoteDataSource});

//   @override
//   Future<Either<Failure, UserEntity>> signUp(SingUpParams params) async{
//     final result = await baseAuthRemoteDataSource.signUp(params);
//     try {
//       return Right(result);
//     } on ServerException catch (e) {
//         return Left(Failure(errMessage: e.errorModel.errorMessage));
//       }
//   }
// }

class ImpAuthRepo extends baseAuthRepo {
  final AuthRemoteData AuthRemoteDataSource;

  ImpAuthRepo({required this.AuthRemoteDataSource});

  @override
  Future<Either<failure, UserEntity>> signUp(UserParams params) async {
    try {
      final user = await AuthRemoteDataSource.signUp(params);
      return Right(user);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioerro(e));
      } else {
        return left(serverFailure(e.toString()));
      }
    }
  }
  


  @override
  Future<Either<failure, SignInModel>> signIn(UserParams params) async {
    try {
    final response=  await AuthRemoteDataSource.signIn(params);
    
      return Right(response);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioerro(e));
      } else {
        return left(serverFailure(e.toString()));
      }
    }
  }
}
