import '../../domain/entities/provinsi_entity.dart';
import '../models/provinsi_model.dart';

class ProvinsiMapper {
  ProvinsiEntity toProvinsi(DataProvinsi data) {
    try {
      return ProvinsiEntity(code: data.code, name: data.name);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<ProvinsiEntity> toListProvinsi(List<DataProvinsi> listData) {
    final List<ProvinsiEntity> listProvinsi = [];

    for (var entity in listData) {
      try {
        listProvinsi.add(toProvinsi(entity));
      } catch (e) {
        throw Exception('Could not map entity ${entity.code}');
      }
    }

    return listProvinsi;
  }
}
