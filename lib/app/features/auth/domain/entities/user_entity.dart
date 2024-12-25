import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? uid,
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
    required String provinsiName,
    required String provinsiId,
    required String kabupatenName,
    required String kabupatenId,
    required String kecamatanName,
    required String kecamatanId,
    required String kelurahanName,
    required String kelurahanId,
  }) = _UserEntity;
}
