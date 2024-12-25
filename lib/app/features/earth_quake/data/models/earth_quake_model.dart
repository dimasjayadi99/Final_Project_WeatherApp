import 'package:json_annotation/json_annotation.dart';

part 'earth_quake_model.g.dart';

@JsonSerializable()
class EarthQuakeModel {
  @JsonKey(name: "Infogempa")
  final Infogempa infogempa;

  EarthQuakeModel({
    required this.infogempa,
  });

  factory EarthQuakeModel.fromJson(Map<String, dynamic> json) =>
      _$EarthQuakeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EarthQuakeModelToJson(this);
}

@JsonSerializable()
class Infogempa {
  @JsonKey(name: "gempa")
  final List<Gempa> gempa;

  Infogempa({
    required this.gempa,
  });

  factory Infogempa.fromJson(Map<String, dynamic> json) {
    var gempaData = json['gempa'];

    if (gempaData is List) {
      return Infogempa(
        gempa: List<Gempa>.from(gempaData.map((x) => Gempa.fromJson(x))),
      );
    } else {
      return Infogempa(
        gempa: [Gempa.fromJson(gempaData)],
      );
    }
  }

  Map<String, dynamic> toJson() => _$InfogempaToJson(this);
}

@JsonSerializable()
class Gempa {
  @JsonKey(name: "Tanggal")
  final String tanggal;
  @JsonKey(name: "Jam")
  final String jam;
  @JsonKey(name: "DateTime")
  final DateTime dateTime;
  @JsonKey(name: "Coordinates")
  final String coordinates;
  @JsonKey(name: "Lintang")
  final String lintang;
  @JsonKey(name: "Bujur")
  final String bujur;
  @JsonKey(name: "Magnitude")
  final String magnitude;
  @JsonKey(name: "Kedalaman")
  final String kedalaman;
  @JsonKey(name: "Wilayah")
  final String wilayah;
  @JsonKey(name: "Potensi")
  final String potensi;
  @JsonKey(name: "Dirasakan")
  String? dirasakan;
  @JsonKey(name: "Shakemap")
  String? shakemap;

  Gempa({
    required this.tanggal,
    required this.jam,
    required this.dateTime,
    required this.coordinates,
    required this.lintang,
    required this.bujur,
    required this.magnitude,
    required this.kedalaman,
    required this.wilayah,
    required this.potensi,
    this.dirasakan,
    this.shakemap,
  });

  factory Gempa.fromJson(Map<String, dynamic> json) => _$GempaFromJson(json);

  Map<String, dynamic> toJson() => _$GempaToJson(this);
}
