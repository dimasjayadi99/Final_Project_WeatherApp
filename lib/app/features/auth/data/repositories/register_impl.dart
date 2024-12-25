import 'package:pantera/app/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/repositories/register_repository.dart';

class RegisterImpl extends RegisterRepository {
  final AuthService authService;

  RegisterImpl({required this.authService});

  @override
  Future<void> registerUser(
    UserEntity userEntity,
    String password,
  ) async {
    try {
      final response =
          await authService.registerEmailPassword(userEntity, password);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
