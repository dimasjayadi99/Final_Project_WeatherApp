import 'package:pantera/app/core/domain/entities/provinsi_entity.dart';

abstract class ProvinsiRepository {
  Future<List<ProvinsiEntity>> fetchListProvinsi();
}
