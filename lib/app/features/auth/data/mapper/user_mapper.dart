import 'package:pantera/app/features/auth/data/models/user_model.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';

class UserMapper {
  UserEntity toUser(UserModel user) {
    try {
      return UserEntity(
        uid: user.uid ?? '',
        email: user.email ?? '',
        firstName: user.firstName ?? '',
        lastName: user.lastName ?? '',
        phone: user.phone ?? '',
        provinsiName: user.provinsiName ?? '',
        provinsiId: user.provinsiId ?? '',
        kabupatenName: user.kabupatenName ?? '',
        kabupatenId: user.kabupatenId ?? '',
        kecamatanName: user.kecamatanName ?? '',
        kecamatanId: user.kecamatanId ?? '',
        kelurahanName: user.kelurahanName ?? '',
        kelurahanId: user.kelurahanId ?? '',
      );
    } catch (e) {
      throw Exception('Failed to mapping data : $e');
    }
  }
}
