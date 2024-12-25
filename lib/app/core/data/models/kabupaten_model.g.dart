// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kabupaten_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KabupatenModel _$KabupatenModelFromJson(Map<String, dynamic> json) =>
    KabupatenModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataKabupaten.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KabupatenModelToJson(KabupatenModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

DataKabupaten _$DataKabupatenFromJson(Map<String, dynamic> json) =>
    DataKabupaten(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$DataKabupatenToJson(DataKabupaten instance) =>
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
