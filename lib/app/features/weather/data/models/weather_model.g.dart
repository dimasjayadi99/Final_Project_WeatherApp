// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      lokasi: Lokasi.fromJson(json['lokasi'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'lokasi': instance.lokasi,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      lokasi: Lokasi.fromJson(json['lokasi'] as Map<String, dynamic>),
      cuaca: (json['cuaca'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => Cuaca.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'lokasi': instance.lokasi,
      'cuaca': instance.cuaca,
    };

Cuaca _$CuacaFromJson(Map<String, dynamic> json) => Cuaca(
      datetime: DateTime.parse(json['datetime'] as String),
      t: (json['t'] as num).toInt(),
      tcc: (json['tcc'] as num).toInt(),
      tp: (json['tp'] as num).toDouble(),
      weather: (json['weather'] as num).toInt(),
      weatherDesc: json['weather_desc'] as String,
      weatherDescEn: json['weather_desc_en'] as String,
      wdDeg: (json['wd_deg'] as num).toInt(),
      wd: json['wd'] as String,
      wdTo: json['wd_to'] as String,
      ws: (json['ws'] as num).toDouble(),
      hu: (json['hu'] as num).toInt(),
      vs: (json['vs'] as num).toInt(),
      vsText: json['vs_text'] as String,
      timeIndex: json['time_index'] as String,
      analysisDate: DateTime.parse(json['analysis_date'] as String),
      image: json['image'] as String,
      utcDatetime: DateTime.parse(json['utc_datetime'] as String),
      localDatetime: DateTime.parse(json['local_datetime'] as String),
    );

Map<String, dynamic> _$CuacaToJson(Cuaca instance) => <String, dynamic>{
      'datetime': instance.datetime.toIso8601String(),
      't': instance.t,
      'tcc': instance.tcc,
      'tp': instance.tp,
      'weather': instance.weather,
      'weather_desc': instance.weatherDesc,
      'weather_desc_en': instance.weatherDescEn,
      'wd_deg': instance.wdDeg,
      'wd': instance.wd,
      'wd_to': instance.wdTo,
      'ws': instance.ws,
      'hu': instance.hu,
      'vs': instance.vs,
      'vs_text': instance.vsText,
      'time_index': instance.timeIndex,
      'analysis_date': instance.analysisDate.toIso8601String(),
      'image': instance.image,
      'utc_datetime': instance.utcDatetime.toIso8601String(),
      'local_datetime': instance.localDatetime.toIso8601String(),
    };

Lokasi _$LokasiFromJson(Map<String, dynamic> json) => Lokasi(
      adm1: json['adm1'] as String,
      adm2: json['adm2'] as String,
      adm3: json['adm3'] as String,
      adm4: json['adm4'] as String,
      provinsi: json['provinsi'] as String,
      kotkab: json['kotkab'] as String,
      kecamatan: json['kecamatan'] as String,
      desa: json['desa'] as String,
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      timezone: json['timezone'] as String,
      type: json['type'] as String? ?? 'unknown',
    );

Map<String, dynamic> _$LokasiToJson(Lokasi instance) => <String, dynamic>{
      'adm1': instance.adm1,
      'adm2': instance.adm2,
      'adm3': instance.adm3,
      'adm4': instance.adm4,
      'provinsi': instance.provinsi,
      'kotkab': instance.kotkab,
      'kecamatan': instance.kecamatan,
      'desa': instance.desa,
      'lon': instance.lon,
      'lat': instance.lat,
      'timezone': instance.timezone,
      'type': instance.type,
    };
