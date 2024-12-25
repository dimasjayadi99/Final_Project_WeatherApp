import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String? uid;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? provinsiName;
  final String? provinsiId;
  final String? kabupatenName;
  final String? kabupatenId;
  final String? kecamatanName;
  final String? kecamatanId;
  final String? kelurahanName;
  final String? kelurahanId;

  UserModel({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.provinsiName,
    required this.provinsiId,
    required this.kabupatenName,
    required this.kabupatenId,
    required this.kecamatanName,
    required this.kecamatanId,
    required this.kelurahanName,
    required this.kelurahanId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
