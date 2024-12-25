import '../../domain/entities/kelurahan_entity.dart';
import '../models/kelurahan_model.dart';

class KelurahanMapper {
  KelurahanEntity toKelurahan(DataKelurahan data) {
    try {
      return KelurahanEntity(code: data.code, name: data.name);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<KelurahanEntity> toListKelurahan(List<DataKelurahan> listData) {
    final List<KelurahanEntity> listKelurahan = [];

    for (var entity in listData) {
      try {
        listKelurahan.add(toKelurahan(entity));
      } catch (e) {
        throw Exception('Could not map entity ${entity.code}');
      }
    }

    return listKelurahan;
  }
}
