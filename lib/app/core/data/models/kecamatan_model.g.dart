// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kecamatan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KecamatanModel _$KecamatanModelFromJson(Map<String, dynamic> json) =>
    KecamatanModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataKecamatan.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KecamatanModelToJson(KecamatanModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

DataKecamatan _$DataKecamatanFromJson(Map<String, dynamic> json) =>
    DataKecamatan(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$DataKecamatanToJson(DataKecamatan instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      administrativeAreaLevel:
          (json['administrative_area_level'] as num).toInt(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'administrative_area_level': instance.administrativeAreaLevel,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
