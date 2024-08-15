import 'package:equatable/equatable.dart';

class TemplateParams {
  final String id;
  TemplateParams({required this.id});
}

class UserParams {
  final String id;
  UserParams({required this.id});
}

class PostParams {
  final String id;
  PostParams({required this.id});
}
class SingUpParams extends Equatable{
final String name;
final String email;
final String password;

  SingUpParams({required this.name, required this.email, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [name,email,password];

}