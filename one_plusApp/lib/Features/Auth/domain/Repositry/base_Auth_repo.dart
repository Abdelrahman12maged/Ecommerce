import 'package:dartz/dartz.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/core/errors/failu.dart';
import '../../../../core/params/params.dart';
import '../../data/models/signIn_model.dart';

abstract class baseAuthRepo {
  Future<Either<failure, UserEntity>> signUp(UserParams params);
  Future<Either<failure, SignInModel>> signIn(UserParams params);
}
