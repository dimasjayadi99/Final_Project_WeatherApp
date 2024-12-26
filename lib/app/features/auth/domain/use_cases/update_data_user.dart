import 'package:pantera/app/features/auth/domain/repositories/user_repository.dart';

class UpdateDataUser {
  final UserRepository userRepository;

  UpdateDataUser({required this.userRepository});

  Future<void> updateDataUser(String uid, Map<String, dynamic> data) async {
    return await userRepository.updateDataUser(uid, data);
  }
}
