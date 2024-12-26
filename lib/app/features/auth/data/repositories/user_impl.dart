import 'package:pantera/app/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:pantera/app/features/auth/data/mapper/user_mapper.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/repositories/user_repository.dart';

class UserImpl extends UserRepository {
  final AuthService authService;
  final UserMapper userMapper;

  UserImpl({required this.authService, required this.userMapper});

  @override
  Future<UserEntity> fetchDataUser(String uid) async {
    try {
      final response = await authService.fetchDataUser(uid);
      final mapping = userMapper.toUser(response);
      return mapping;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateDataUser(String uid, Map<String, dynamic> data) async {
    try {
      await authService.updateData(uid, data);
    } catch (e) {
      rethrow;
    }
  }
}
