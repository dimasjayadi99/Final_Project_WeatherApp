import '../repositories/login_repository.dart';

class LoginUser {
  final LoginRepository loginRepository;

  LoginUser(this.loginRepository);

  Future<String> loginUser(String email, String password) async {
    return await loginRepository.loginUser(email, password);
  }
}
