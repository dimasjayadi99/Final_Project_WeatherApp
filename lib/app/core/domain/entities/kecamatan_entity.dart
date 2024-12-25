import 'package:freezed_annotation/freezed_annotation.dart';

part 'kecamatan_entity.freezed.dart';

@freezed
class KecamatanEntity with _$KecamatanEntity {
  factory KecamatanEntity({
    required String code,
    required String name,
  }) = _KecamatanEntity;
}
