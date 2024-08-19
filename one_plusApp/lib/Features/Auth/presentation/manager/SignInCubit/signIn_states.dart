
import 'package:one_plus/Features/Auth/data/models/SignInModel.dart';

import '../../../domain/entity/user.dart';

class SignInStates {}

final class SignInInitial extends SignInStates {}

final class SignInLoading extends SignInStates {}

final class SignInSuccessfully extends SignInStates {
  final SignInModel response ;

  SignInSuccessfully({required this.response});
}


final class SignInFailure extends SignInStates {
  final dynamic errMessage;

  SignInFailure({required this.errMessage});


}
