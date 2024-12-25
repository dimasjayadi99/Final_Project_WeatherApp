import '../../domain/entities/kecamatan_entity.dart';
import '../models/kecamatan_model.dart';

class KecamatanMapper {
  KecamatanEntity toKecamatan(DataKecamatan data) {
    try {
      return KecamatanEntity(code: data.code, name: data.name);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<KecamatanEntity> toListKecamatan(List<DataKecamatan> listData) {
    final List<KecamatanEntity> listKecamatan = [];

    for (var entity in listData) {
      try {
        listKecamatan.add(toKecamatan(entity));
      } catch (e) {
        throw Exception('Could not map entity ${entity.code}');
      }
    }

    return listKecamatan;
  }
}
