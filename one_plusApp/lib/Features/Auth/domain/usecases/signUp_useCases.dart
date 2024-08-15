import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/core/errors/failu.dart';
import 'package:one_plus/core/usecase/baseUsecase.dart';
import 'package:one_plus/generated/intl/messages_ar.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/params/params.dart';
import '../repositry/base_Auth_repo.dart';


class SignUpUseCase  {
 final baseAuthRepo baseAuthrepo;
  SignUpUseCase({required  this.baseAuthrepo});

  Future<Either<failure, UserEntity>> call(
      SingUpParams parameters) async {
    
       return await baseAuthrepo.signUp(parameters);
      
   
    
  }
}

