import 'package:dartz/dartz.dart';
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';
import 'package:one_plus/Features/Auth/domain/entity/user.dart';
import 'package:one_plus/core/errors/failu.dart';
import 'package:one_plus/core/params/params.dart';

import '../repositry/base_Auth_repo.dart';

class SignInUsecase {
  final baseAuthRepo baseAuthrepo;

  SignInUsecase({required this.baseAuthrepo});
  Future<Either<failure, SignInModel>> call(UserParams params) async {
    return await baseAuthrepo.signIn(params);
  }
}
