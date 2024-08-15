import 'package:one_plus/Features/Auth/domain/entity/user.dart';

class UserModel extends UserEntity {
  UserModel({ required super.name, required super.email});



   factory UserModel.fromJson( dynamic json) {
    return UserModel(
    //  id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
    //  'id': id,
      'name': name,
      'email': email,
    };
  }
}


