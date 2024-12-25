import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/repositories/register_repository.dart';

class RegisterUser {
  final RegisterRepository registerRepository;

  RegisterUser(this.registerRepository);

  Future<void> registerAccount(
    UserEntity userEntity,
    String password,
  ) async {
    return await registerRepository.registerUser(userEntity, password);
  }
}
