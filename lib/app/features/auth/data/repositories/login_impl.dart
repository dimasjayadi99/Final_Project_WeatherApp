import 'package:pantera/app/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:pantera/app/features/auth/data/mapper/user_mapper.dart';
import 'package:pantera/app/features/auth/domain/repositories/login_repository.dart';

class LoginImpl implements LoginRepository {
  final UserMapper mapper;
  final AuthService authService;

  LoginImpl({required this.mapper, required this.authService});

  @override
  Future<String> loginUser(String email, String password) async {
    try {
      final response = await authService.loginEmailPassword(email, password);
      // final mapping = mapper.toUser(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
