import 'package:pantera/app/core/data/data_source/remote/location_service.dart';

import '../../domain/entities/kelurahan_entity.dart';
import '../../domain/repositories/kelurahan_repository.dart';
import '../mapper/kelurahan_mapper.dart';

class KelurahanImpl extends KelurahanRepository {
  final LocationService locationService;
  final KelurahanMapper kelurahanMapper;

  KelurahanImpl({required this.locationService, required this.kelurahanMapper});

  @override
  Future<List<KelurahanEntity>> fetchListKelurahan(String kecamatanCode) async {
    try {
      final response = await locationService.fetchListKelurahan(kecamatanCode);
      final data = kelurahanMapper.toListKelurahan(response.data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
