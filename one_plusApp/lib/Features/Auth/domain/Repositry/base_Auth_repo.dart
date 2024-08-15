
import 'package:dartz/dartz.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/core/errors/failu.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/params/params.dart';

abstract class baseAuthRepo{

 // Future<Either<Failure,UserEntity>>  signIn(String email, String password);
  Future<Either<failure,UserEntity>> signUp(SingUpParams params);
}

