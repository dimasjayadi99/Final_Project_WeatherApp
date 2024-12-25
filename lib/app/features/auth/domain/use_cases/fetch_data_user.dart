import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/repositories/user_repository.dart';

class FetchDataUser {
  final UserRepository userRepository;
  FetchDataUser(this.userRepository);

  Future<UserEntity> fetchDataUser(String uid) async {
    return userRepository.fetchDataUser(uid);
  }
}
