import 'package:equatable/equatable.dart';


class UserParams extends Equatable{
final String? name;
final String email;
final String password;

  UserParams({ this.name, required this.email, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [name,email,password];

}