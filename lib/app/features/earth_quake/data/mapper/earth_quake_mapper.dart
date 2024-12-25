import 'package:pantera/app/features/earth_quake/data/models/earth_quake_model.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';

class EarthQuakeMapper {
  EarthQuakeEntity toEarthQuake(Gempa data) {
    try {
      return EarthQuakeEntity(
          tanggal: data.tanggal,
          jam: data.jam,
          dateTime: data.dateTime,
          coordinates: data.coordinates,
          lintang: data.lintang,
          bujur: data.bujur,
          magnitude: data.magnitude,
          kedalaman: data.kedalaman,
          wilayah: data.wilayah,
          potensi: data.potensi,
          dirasakan: data.dirasakan ?? 'unknown',
          shakemap: data.shakemap ?? 'unknown');
    } catch (e) {
      throw Exception('Failed to mapping data : $e');
    }
  }

  List<EarthQuakeEntity> toListEarthQuake(List<Gempa> dataList) {
    final List<EarthQuakeEntity> list = [];

    for (var entity in dataList) {
      try {
        list.add(toEarthQuake(entity));
      } catch (e) {
        throw Exception('Failed to mapping data : $e');
      }
    }

    return list;
  }
}
