import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  @JsonKey(name: "lokasi")
  final Lokasi lokasi;
  @JsonKey(name: "data")
  final List<Datum> data;

  WeatherModel({
    required this.lokasi,
    required this.data,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "lokasi")
  final Lokasi lokasi;
  @JsonKey(name: "cuaca")
  final List<List<Cuaca>> cuaca;

  Datum({
    required this.lokasi,
    required this.cuaca,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Cuaca {
  @JsonKey(name: "datetime")
  final DateTime datetime;
  @JsonKey(name: "t")
  final int t;
  @JsonKey(name: "tcc")
  final int tcc;
  @JsonKey(name: "tp")
  final double tp;
  @JsonKey(name: "weather")
  final int weather;
  @JsonKey(name: "weather_desc")
  final String weatherDesc;
  @JsonKey(name: "weather_desc_en")
  final String weatherDescEn;
  @JsonKey(name: "wd_deg")
  final int wdDeg;
  @JsonKey(name: "wd")
  final String wd;
  @JsonKey(name: "wd_to")
  final String wdTo;
  @JsonKey(name: "ws")
  final double ws;
  @JsonKey(name: "hu")
  final int hu;
  @JsonKey(name: "vs")
  final int vs;
  @JsonKey(name: "vs_text")
  final String vsText;
  @JsonKey(name: "time_index")
  final String timeIndex;
  @JsonKey(name: "analysis_date")
  final DateTime analysisDate;
  @JsonKey(name: "image")
  final String image;
  @JsonKey(name: "utc_datetime")
  final DateTime utcDatetime;
  @JsonKey(name: "local_datetime")
  final DateTime localDatetime;

  Cuaca({
    required this.datetime,
    required this.t,
    required this.tcc,
    required this.tp,
    required this.weather,
    required this.weatherDesc,
    required this.weatherDescEn,
    required this.wdDeg,
    required this.wd,
    required this.wdTo,
    required this.ws,
    required this.hu,
    required this.vs,
    required this.vsText,
    required this.timeIndex,
    required this.analysisDate,
    required this.image,
    required this.utcDatetime,
    required this.localDatetime,
  });

  factory Cuaca.fromJson(Map<String, dynamic> json) => _$CuacaFromJson(json);

  Map<String, dynamic> toJson() => _$CuacaToJson(this);
}

@JsonSerializable()
class Lokasi {
  @JsonKey(name: "adm1")
  final String adm1;
  @JsonKey(name: "adm2")
  final String adm2;
  @JsonKey(name: "adm3")
  final String adm3;
  @JsonKey(name: "adm4")
  final String adm4;
  @JsonKey(name: "provinsi")
  final String provinsi;
  @JsonKey(name: "kotkab")
  final String kotkab;
  @JsonKey(name: "kecamatan")
  final String kecamatan;
  @JsonKey(name: "desa")
  final String desa;
  @JsonKey(name: "lon")
  final double lon;
  @JsonKey(name: "lat")
  final double lat;
  @JsonKey(name: "timezone")
  final String timezone;
  @JsonKey(name: "type", defaultValue: 'unknown')
  final String type;

  Lokasi({
    required this.adm1,
    required this.adm2,
    required this.adm3,
    required this.adm4,
    required this.provinsi,
    required this.kotkab,
    required this.kecamatan,
    required this.desa,
    required this.lon,
    required this.lat,
    required this.timezone,
    required this.type,
  });

  factory Lokasi.fromJson(Map<String, dynamic> json) => _$LokasiFromJson(json);

  Map<String, dynamic> toJson() => _$LokasiToJson(this);
}
