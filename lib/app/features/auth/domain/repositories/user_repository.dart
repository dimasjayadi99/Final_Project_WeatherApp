import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> fetchDataUser(String uid);
}
