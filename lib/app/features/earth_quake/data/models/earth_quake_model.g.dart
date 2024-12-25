// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earth_quake_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarthQuakeModel _$EarthQuakeModelFromJson(Map<String, dynamic> json) =>
    EarthQuakeModel(
      infogempa: Infogempa.fromJson(json['Infogempa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EarthQuakeModelToJson(EarthQuakeModel instance) =>
    <String, dynamic>{
      'Infogempa': instance.infogempa,
    };

Map<String, dynamic> _$InfogempaToJson(Infogempa instance) => <String, dynamic>{
      'gempa': instance.gempa,
    };

Gempa _$GempaFromJson(Map<String, dynamic> json) => Gempa(
      tanggal: json['Tanggal'] as String,
      jam: json['Jam'] as String,
      dateTime: DateTime.parse(json['DateTime'] as String),
      coordinates: json['Coordinates'] as String,
      lintang: json['Lintang'] as String,
      bujur: json['Bujur'] as String,
      magnitude: json['Magnitude'] as String,
      kedalaman: json['Kedalaman'] as String,
      wilayah: json['Wilayah'] as String,
      potensi: json['Potensi'] as String,
      dirasakan: json['Dirasakan'] as String?,
      shakemap: json['Shakemap'] as String?,
    );

Map<String, dynamic> _$GempaToJson(Gempa instance) => <String, dynamic>{
      'Tanggal': instance.tanggal,
      'Jam': instance.jam,
      'DateTime': instance.dateTime.toIso8601String(),
      'Coordinates': instance.coordinates,
      'Lintang': instance.lintang,
      'Bujur': instance.bujur,
      'Magnitude': instance.magnitude,
      'Kedalaman': instance.kedalaman,
      'Wilayah': instance.wilayah,
      'Potensi': instance.potensi,
      'Dirasakan': instance.dirasakan,
      'Shakemap': instance.shakemap,
    };
