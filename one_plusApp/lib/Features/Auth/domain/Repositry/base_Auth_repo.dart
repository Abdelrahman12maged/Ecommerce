import 'package:dartz/dartz.dart';
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/core/errors/failu.dart';
import '../../../../core/params/params.dart';

abstract class baseAuthRepo {
  Future<Either<failure, UserEntity>> signUp(UserParams params);
  Future<Either<failure, SignInModel>> signIn(UserParams params);
}
