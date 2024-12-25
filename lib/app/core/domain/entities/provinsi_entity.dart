import 'package:freezed_annotation/freezed_annotation.dart';

part 'provinsi_entity.freezed.dart';

@freezed
class ProvinsiEntity with _$ProvinsiEntity {
  factory ProvinsiEntity({
    required String code,
    required String name,
  }) = _ProvinsiEntity;
}
