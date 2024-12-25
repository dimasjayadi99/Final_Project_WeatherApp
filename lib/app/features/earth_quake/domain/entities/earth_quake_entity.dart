import 'package:freezed_annotation/freezed_annotation.dart';

part 'earth_quake_entity.freezed.dart';

@freezed
class EarthQuakeEntity with _$EarthQuakeEntity {
  factory EarthQuakeEntity({
    required String tanggal,
    required String jam,
    required DateTime dateTime,
    required String coordinates,
    required String lintang,
    required String bujur,
    required String magnitude,
    required String kedalaman,
    required String wilayah,
    required String potensi,
    required String dirasakan,
    required String shakemap,
  }) = _EarthQuakeEntity;
}
