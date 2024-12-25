import 'package:json_annotation/json_annotation.dart';

part 'kecamatan_model.g.dart';

@JsonSerializable()
class KecamatanModel {
  @JsonKey(name: "data")
  final List<DataKecamatan> data;
  @JsonKey(name: "meta")
  final Meta meta;

  KecamatanModel({
    required this.data,
    required this.meta,
  });

  factory KecamatanModel.fromJson(Map<String, dynamic> json) =>
      _$KecamatanModelFromJson(json);

  Map<String, dynamic> toJson() => _$KecamatanModelToJson(this);
}

@JsonSerializable()
class DataKecamatan {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "name")
  final String name;

  DataKecamatan({
    required this.code,
    required this.name,
  });

  factory DataKecamatan.fromJson(Map<String, dynamic> json) =>
      _$DataKecamatanFromJson(json);

  Map<String, dynamic> toJson() => _$DataKecamatanToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "administrative_area_level")
  final int administrativeAreaLevel;
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  Meta({
    required this.administrativeAreaLevel,
    required this.updatedAt,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
