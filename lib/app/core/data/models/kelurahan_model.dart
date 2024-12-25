import 'package:json_annotation/json_annotation.dart';

part 'kelurahan_model.g.dart';

@JsonSerializable()
class KelurahanModel {
  @JsonKey(name: "data")
  final List<DataKelurahan> data;
  @JsonKey(name: "meta")
  final Meta meta;

  KelurahanModel({
    required this.data,
    required this.meta,
  });

  factory KelurahanModel.fromJson(Map<String, dynamic> json) =>
      _$KelurahanModelFromJson(json);

  Map<String, dynamic> toJson() => _$KelurahanModelToJson(this);
}

@JsonSerializable()
class DataKelurahan {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "postal_code")
  final String postalCode;

  DataKelurahan({
    required this.code,
    required this.name,
    required this.postalCode,
  });

  factory DataKelurahan.fromJson(Map<String, dynamic> json) =>
      _$DataKelurahanFromJson(json);

  Map<String, dynamic> toJson() => _$DataKelurahanToJson(this);
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
