import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
 // final int id;
  final String name;
  final String email; 
  UserEntity({ required this.name, required this.email});

  @override
  List<Object> get props => [ name, email];

 
}
