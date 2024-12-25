import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';

abstract class RegisterRepository {
  Future<void> registerUser(
    UserEntity userEntity,
    String password,
  );
}
