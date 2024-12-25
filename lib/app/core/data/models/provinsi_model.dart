import 'package:json_annotation/json_annotation.dart';

part 'provinsi_model.g.dart';

@JsonSerializable()
class ProvinsiModel {
  @JsonKey(name: "data")
  final List<DataProvinsi> data;
  @JsonKey(name: "meta")
  final Meta meta;

  ProvinsiModel({
    required this.data,
    required this.meta,
  });

  factory ProvinsiModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinsiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinsiModelToJson(this);
}

@JsonSerializable()
class DataProvinsi {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "name")
  final String name;

  DataProvinsi({
    required this.code,
    required this.name,
  });

  factory DataProvinsi.fromJson(Map<String, dynamic> json) =>
      _$DataProvinsiFromJson(json);

  Map<String, dynamic> toJson() => _$DataProvinsiToJson(this);
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
