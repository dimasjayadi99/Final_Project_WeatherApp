import '../../domain/entities/kabupaten_entity.dart';
import '../models/kabupaten_model.dart';

class KabupatenMapper {
  KabupatenEntity toKabupaten(DataKabupaten data) {
    try {
      return KabupatenEntity(code: data.code, name: data.name);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<KabupatenEntity> toListKabupaten(List<DataKabupaten> listData) {
    final List<KabupatenEntity> listKabupaten = [];

    for (var entity in listData) {
      try {
        listKabupaten.add(toKabupaten(entity));
      } catch (e) {
        throw Exception('Could not map entity ${entity.code}');
      }
    }

    return listKabupaten;
  }
}
