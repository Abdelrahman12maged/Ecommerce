import 'dart:convert';

import 'package:one_plus/Features/Auth/data/models/userModel.dart';

import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/errors/expentions.dart';


class UserLocalDataSource {
  final CacheHelper cache;
  final String key = "CachedUser";
  UserLocalDataSource({required this.cache});

  cacheUser(UserModel? userToCache) {
    if (userToCache != null) {
      cache.saveData(
        key: key,
        value: json.encode(
          userToCache.toJson(),
        ),
      );
    } else {
      throw CacheExeption(errorMessage: "No Internet Connection");
    }
  }

  Future<UserModel> getLastUser() {
    final jsonString = cache.getDataString(key: key);

    if (jsonString != null) {
      return Future.value(UserModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheExeption(errorMessage: "No Internet Connection");
    }
  }
}
