
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';

import '../../../domain/entity/user.dart';

class UserStates {}

final class UserInitial extends UserStates {}
final class SignUPLoading extends UserStates {}

final class SignUPSuccessfully extends UserStates {
  final UserEntity user;

  SignUPSuccessfully({required this.user});
}


final class SignUPFailure extends UserStates {
  final dynamic errMessage;

  SignUPFailure({required this.errMessage});


}
final class SignInLoading extends UserStates {}

final class SignInSuccessfully extends UserStates {
  final SignInModel response ;

  SignInSuccessfully({required this.response});
}


final class SignInFailure extends UserStates {
  final dynamic errMessage;

  SignInFailure({required this.errMessage});


}
