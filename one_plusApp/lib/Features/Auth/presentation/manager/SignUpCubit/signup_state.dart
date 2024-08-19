
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';

import '../../../domain/entity/user.dart';

class SignUpStates {}

final class SignUpInitial extends SignUpStates {}
final class SignUPLoading extends SignUpStates {}

final class SignUPSuccessfully extends SignUpStates {
  final UserEntity user;

  SignUPSuccessfully({required this.user});
}


final class SignUPFailure extends SignUpStates {
  final dynamic errMessage;

  SignUPFailure({required this.errMessage});


}

