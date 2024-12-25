// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      provinsiName: json['provinsiName'] as String?,
      provinsiId: json['provinsiId'] as String?,
      kabupatenName: json['kabupatenName'] as String?,
      kabupatenId: json['kabupatenId'] as String?,
      kecamatanName: json['kecamatanName'] as String?,
      kecamatanId: json['kecamatanId'] as String?,
      kelurahanName: json['kelurahanName'] as String?,
      kelurahanId: json['kelurahanId'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'provinsiName': instance.provinsiName,
      'provinsiId': instance.provinsiId,
      'kabupatenName': instance.kabupatenName,
      'kabupatenId': instance.kabupatenId,
      'kecamatanName': instance.kecamatanName,
      'kecamatanId': instance.kecamatanId,
      'kelurahanName': instance.kelurahanName,
      'kelurahanId': instance.kelurahanId,
    };
