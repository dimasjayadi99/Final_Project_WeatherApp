// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelurahan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KelurahanModel _$KelurahanModelFromJson(Map<String, dynamic> json) =>
    KelurahanModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataKelurahan.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KelurahanModelToJson(KelurahanModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

DataKelurahan _$DataKelurahanFromJson(Map<String, dynamic> json) =>
    DataKelurahan(
      code: json['code'] as String,
      name: json['name'] as String,
      postalCode: json['postal_code'] as String,
    );

Map<String, dynamic> _$DataKelurahanToJson(DataKelurahan instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'postal_code': instance.postalCode,
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
