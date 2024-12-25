import 'package:json_annotation/json_annotation.dart';

part 'kabupaten_model.g.dart';

@JsonSerializable()
class KabupatenModel {
  @JsonKey(name: "data")
  final List<DataKabupaten> data;
  @JsonKey(name: "meta")
  final Meta meta;

  KabupatenModel({
    required this.data,
    required this.meta,
  });

  factory KabupatenModel.fromJson(Map<String, dynamic> json) =>
      _$KabupatenModelFromJson(json);

  Map<String, dynamic> toJson() => _$KabupatenModelToJson(this);
}

@JsonSerializable()
class DataKabupaten {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "name")
  final String name;

  DataKabupaten({
    required this.code,
    required this.name,
  });

  factory DataKabupaten.fromJson(Map<String, dynamic> json) =>
      _$DataKabupatenFromJson(json);

  Map<String, dynamic> toJson() => _$DataKabupatenToJson(this);
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
