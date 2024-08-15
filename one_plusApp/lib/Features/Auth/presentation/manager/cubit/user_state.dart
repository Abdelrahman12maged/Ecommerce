
import '../../../domain/entity/user.dart';

class SignUPState {}

final class UserInitial extends SignUPState {}
final class SignUPLoading extends SignUPState {}

final class SignUPSuccessfully extends SignUPState {
  final UserEntity user;

  SignUPSuccessfully({required this.user});
}


final class SignUPFailure extends SignUPState {
  final dynamic errMessage;

  SignUPFailure({required this.errMessage});


}
